#pragma once

#include <algorithm>
#include <cstdint>
#include <cstddef>
#include <cmath>
#include <functional>
#include <limits>
#include <queue>
#include <utility>
#include <vector>

#include "ann_opt.h"

#if defined(__ARM_NEON)
#include <arm_neon.h>
#endif

struct PQFastScanIndex {
    size_t M;
    size_t Ks;
    size_t subdim;
    size_t base_number;
    size_t vecdim;
    size_t block_size;
    size_t block_number;

    // AoS codebook: [m][center][dim]
    std::vector<float> codebooks;

    // SoA codebook for parallel LUT building: [m][dim][center]
    std::vector<float> codebooks_soa;

    // Block-SoA codes: [block][m][lane]
    // lane = 0..15, one block contains 16 base vectors.
    std::vector<uint8_t> block_codes;
};

static inline size_t pqfs_sample_id(size_t s, size_t train_n, size_t base_number)
{
    if (base_number == 0) return 0;
    if (train_n <= 1) return 0;

    size_t id = s * base_number / train_n;
    if (id >= base_number) id = base_number - 1;
    return id;
}

static inline float pqfs_l2_subspace(
    const float* a,
    const float* b,
    size_t subdim
) {
    float sum = 0.0f;

    for (size_t d = 0; d < subdim; ++d) {
        float diff = a[d] - b[d];
        sum += diff * diff;
    }

    return sum;
}

static inline uint8_t pqfs_find_nearest_center(
    const float* vec,
    const float* centers,
    size_t Ks,
    size_t subdim
) {
    size_t best = 0;
    float best_dist = std::numeric_limits<float>::max();

    for (size_t c = 0; c < Ks; ++c) {
        const float* center = centers + c * subdim;
        float dist = pqfs_l2_subspace(vec, center, subdim);

        if (dist < best_dist) {
            best_dist = dist;
            best = c;
        }
    }

    return static_cast<uint8_t>(best);
}

static inline void pqfs_train_one_subspace(
    float* base,
    size_t base_number,
    size_t vecdim,
    size_t subspace_id,
    size_t M,
    size_t Ks,
    size_t train_n,
    size_t iters,
    std::vector<float>& centers
) {
    const size_t subdim = vecdim / M;
    const size_t offset = subspace_id * subdim;

    centers.assign(Ks * subdim, 0.0f);

    // Deterministic initialization: evenly sample training vectors.
    for (size_t c = 0; c < Ks; ++c) {
        size_t sid = pqfs_sample_id(c * train_n / Ks, train_n, base_number);
        const float* src = base + sid * vecdim + offset;

        for (size_t d = 0; d < subdim; ++d) {
            centers[c * subdim + d] = src[d];
        }
    }

    std::vector<float> sums(Ks * subdim);
    std::vector<int> counts(Ks);

    for (size_t iter = 0; iter < iters; ++iter) {
        std::fill(sums.begin(), sums.end(), 0.0f);
        std::fill(counts.begin(), counts.end(), 0);

        for (size_t s = 0; s < train_n; ++s) {
            size_t sid = pqfs_sample_id(s, train_n, base_number);
            const float* vec = base + sid * vecdim + offset;

            uint8_t best = pqfs_find_nearest_center(
                vec,
                centers.data(),
                Ks,
                subdim
            );

            ++counts[best];

            float* sum_ptr = sums.data() + static_cast<size_t>(best) * subdim;

            for (size_t d = 0; d < subdim; ++d) {
                sum_ptr[d] += vec[d];
            }
        }

        for (size_t c = 0; c < Ks; ++c) {
            float* center = centers.data() + c * subdim;

            if (counts[c] > 0) {
                float inv = 1.0f / static_cast<float>(counts[c]);

                for (size_t d = 0; d < subdim; ++d) {
                    center[d] = sums[c * subdim + d] * inv;
                }
            } else {
                size_t sid = pqfs_sample_id(
                    (c * 131 + iter * 17) % train_n,
                    train_n,
                    base_number
                );

                const float* src = base + sid * vecdim + offset;

                for (size_t d = 0; d < subdim; ++d) {
                    center[d] = src[d];
                }
            }
        }
    }
}

static inline void pqfs_build_codebook_soa(PQFastScanIndex& index)
{
    index.codebooks_soa.assign(index.M * index.subdim * index.Ks, 0.0f);

    for (size_t m = 0; m < index.M; ++m) {
        for (size_t d = 0; d < index.subdim; ++d) {
            for (size_t c = 0; c < index.Ks; ++c) {
                index.codebooks_soa[(m * index.subdim + d) * index.Ks + c] =
                    index.codebooks[(m * index.Ks + c) * index.subdim + d];
            }
        }
    }
}

static inline PQFastScanIndex build_pq_fastscan_index(
    float* base,
    size_t base_number,
    size_t vecdim,
    size_t M,
    size_t Ks,
    size_t train_samples,
    size_t iters
) {
    PQFastScanIndex index;

    // FastScan version uses 4-bit PQ, so Ks is fixed to 16.
    Ks = 16;

    if (M == 0 || vecdim % M != 0) {
        M = 12;
    }

    if (vecdim % M != 0) {
        M = 1;
    }

    size_t train_n = std::min(train_samples, base_number);
    if (train_n < Ks) {
        train_n = std::min(base_number, Ks);
    }
    if (train_n == 0) {
        train_n = base_number;
    }

    index.M = M;
    index.Ks = Ks;
    index.subdim = vecdim / M;
    index.base_number = base_number;
    index.vecdim = vecdim;
    index.block_size = 16;
    index.block_number = (base_number + index.block_size - 1) / index.block_size;

    index.codebooks.resize(index.M * index.Ks * index.subdim);
    index.block_codes.assign(index.block_number * index.M * index.block_size, 0);

    std::vector<float> centers;

    // Train one codebook for each subspace.
    for (size_t m = 0; m < index.M; ++m) {
        pqfs_train_one_subspace(
            base,
            base_number,
            vecdim,
            m,
            index.M,
            index.Ks,
            train_n,
            iters,
            centers
        );

        float* dst = index.codebooks.data() + m * index.Ks * index.subdim;

        for (size_t i = 0; i < index.Ks * index.subdim; ++i) {
            dst[i] = centers[i];
        }
    }

    // Build SoA codebook for cross-centroid parallel LUT construction.
    pqfs_build_codebook_soa(index);

    // Encode base vectors and store codes in block-SoA layout.
    for (size_t i = 0; i < base_number; ++i) {
        const float* base_vec = base + i * vecdim;

        size_t block = i / index.block_size;
        size_t lane = i % index.block_size;

        for (size_t m = 0; m < index.M; ++m) {
            const float* subvec = base_vec + m * index.subdim;
            const float* centers_ptr =
                index.codebooks.data() + m * index.Ks * index.subdim;

            uint8_t code = pqfs_find_nearest_center(
                subvec,
                centers_ptr,
                index.Ks,
                index.subdim
            );

            index.block_codes[(block * index.M + m) * index.block_size + lane] = code;
        }
    }

    return index;
}

static inline void pqfs_build_lut_float(
    const float* query,
    const PQFastScanIndex& index,
    std::vector<float>& lut_float
) {
    lut_float.assign(index.M * index.Ks, 0.0f);

    for (size_t m = 0; m < index.M; ++m) {
        const float* query_sub = query + m * index.subdim;

#if defined(__ARM_NEON)
        // Cross-centroid parallelism: compute 4 centroids at a time.
        for (size_t c = 0; c < index.Ks; c += 4) {
            float32x4_t acc = vdupq_n_f32(0.0f);

            for (size_t d = 0; d < index.subdim; ++d) {
                float32x4_t qv = vdupq_n_f32(query_sub[d]);
                const float* soa_ptr =
                    index.codebooks_soa.data() + (m * index.subdim + d) * index.Ks + c;

                float32x4_t cv = vld1q_f32(soa_ptr);
                acc = vmlaq_f32(acc, qv, cv);
            }

            vst1q_f32(lut_float.data() + m * index.Ks + c, acc);
        }
#else
        for (size_t c = 0; c < index.Ks; ++c) {
            const float* center =
                index.codebooks.data() + (m * index.Ks + c) * index.subdim;

            float ip = 0.0f;

            for (size_t d = 0; d < index.subdim; ++d) {
                ip += query_sub[d] * center[d];
            }

            lut_float[m * index.Ks + c] = ip;
        }
#endif
    }
}

static inline void pqfs_quantize_lut_u8(
    const std::vector<float>& lut_float,
    const PQFastScanIndex& index,
    std::vector<uint8_t>& lut_u8
) {
    const size_t total = index.M * index.Ks;
    lut_u8.assign(total, 0);

    float mn = std::numeric_limits<float>::max();
    float mx = -std::numeric_limits<float>::max();

    for (size_t i = 0; i < total; ++i) {
        float v = lut_float[i];
        if (v < mn) mn = v;
        if (v > mx) mx = v;
    }

    float range = mx - mn;

    if (range < 1e-12f) {
        return;
    }

    float scale = 255.0f / range;

    for (size_t i = 0; i < total; ++i) {
        int q = static_cast<int>(std::round((lut_float[i] - mn) * scale));

        if (q < 0) q = 0;
        if (q > 255) q = 255;

        lut_u8[i] = static_cast<uint8_t>(q);
    }
}

static inline void pqfs_scan_one_block(
    const PQFastScanIndex& index,
    const std::vector<uint8_t>& lut_u8,
    size_t block,
    uint16_t* scores
) {
#if defined(__ARM_NEON)
    uint16x8_t acc_low = vdupq_n_u16(0);
    uint16x8_t acc_high = vdupq_n_u16(0);

    for (size_t m = 0; m < index.M; ++m) {
        const uint8_t* code_ptr =
            index.block_codes.data() + (block * index.M + m) * index.block_size;

        const uint8_t* lut_ptr = lut_u8.data() + m * index.Ks;

        uint8x16_t code_vec = vld1q_u8(code_ptr);
        uint8x16_t table = vld1q_u8(lut_ptr);

        // Register-level table lookup: 16 vector lanes search the 16-entry LUT.
        uint8x16_t val = vqtbl1q_u8(table, code_vec);

        acc_low = vaddw_u8(acc_low, vget_low_u8(val));
        acc_high = vaddw_u8(acc_high, vget_high_u8(val));
    }

    vst1q_u16(scores, acc_low);
    vst1q_u16(scores + 8, acc_high);
#else
    for (size_t lane = 0; lane < index.block_size; ++lane) {
        scores[lane] = 0;
    }

    for (size_t m = 0; m < index.M; ++m) {
        const uint8_t* code_ptr =
            index.block_codes.data() + (block * index.M + m) * index.block_size;

        const uint8_t* lut_ptr = lut_u8.data() + m * index.Ks;

        for (size_t lane = 0; lane < index.block_size; ++lane) {
            scores[lane] += static_cast<uint16_t>(lut_ptr[code_ptr[lane]]);
        }
    }
#endif
}

static inline std::priority_queue<std::pair<float, uint32_t> >
pq_fastscan_search_rerank(
    float* base,
    float* query,
    const PQFastScanIndex& index,
    size_t k,
    size_t p
) {
    if (p < k) {
        p = k;
    }

    if (p > index.base_number) {
        p = index.base_number;
    }

    std::vector<float> lut_float;
    std::vector<uint8_t> lut_u8;

    pqfs_build_lut_float(query, index, lut_float);
    pqfs_quantize_lut_u8(lut_float, index, lut_u8);

    typedef std::pair<uint16_t, uint32_t> CoarseItem;

    std::vector<CoarseItem> coarse_items;
    coarse_items.reserve(index.base_number);

    uint16_t scores[16];

    for (size_t block = 0; block < index.block_number; ++block) {
        pqfs_scan_one_block(index, lut_u8, block, scores);

        for (size_t lane = 0; lane < index.block_size; ++lane) {
            size_t id = block * index.block_size + lane;

            if (id >= index.base_number) {
                break;
            }

            coarse_items.push_back(
                CoarseItem(scores[lane], static_cast<uint32_t>(id))
            );
        }
    }

    if (p < coarse_items.size()) {
        std::nth_element(
            coarse_items.begin(),
            coarse_items.begin() + p,
            coarse_items.end(),
            [](const CoarseItem& a, const CoarseItem& b) {
                if (a.first != b.first) {
                    return a.first > b.first;
                }
                return a.second < b.second;
            }
        );

        coarse_items.resize(p);
    }

    std::priority_queue<std::pair<float, uint32_t> > result;

    for (const auto& item : coarse_items) {
        uint32_t id = item.second;

        const float* base_vec = base + static_cast<size_t>(id) * index.vecdim;
        float ip = inner_product_opt(base_vec, query, index.vecdim);
        float dis = 1.0f - ip;

        if (result.size() < k) {
            result.push({dis, id});
        } else if (dis < result.top().first) {
            result.pop();
            result.push({dis, id});
        }
    }

    return result;
}