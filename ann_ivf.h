#pragma once

#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstdint>
#include <limits>
#include <queue>
#include <utility>
#include <vector>

#include "ann_opt.h"
#include "ann_mt_common.h"

#ifdef _OPENMP
#include <omp.h>
#endif

struct IVFIndex {
    size_t nlist;
    size_t base_number;
    size_t vecdim;
    std::vector<float> centroids;                 // [nlist][vecdim], normalized
    std::vector<std::vector<uint32_t> > lists;    // inverted lists
};

static inline void ivf_normalize(float* x, size_t dim)
{
    double norm2 = 0.0;
    for (size_t d = 0; d < dim; ++d) {
        norm2 += static_cast<double>(x[d]) * static_cast<double>(x[d]);
    }
    double inv = 1.0 / (std::sqrt(norm2) + 1e-12);
    for (size_t d = 0; d < dim; ++d) {
        x[d] = static_cast<float>(static_cast<double>(x[d]) * inv);
    }
}

static inline size_t ivf_sample_id(size_t s, size_t train_n, size_t base_number)
{
    if (base_number == 0) return 0;
    if (train_n <= 1) return 0;
    size_t id = s * base_number / train_n;
    if (id >= base_number) id = base_number - 1;
    return id;
}

static inline uint32_t ivf_nearest_centroid(
    const float* vec,
    const float* centroids,
    size_t nlist,
    size_t vecdim
) {
    uint32_t best = 0;
    float best_ip = -std::numeric_limits<float>::max();

    for (size_t c = 0; c < nlist; ++c) {
        float ip = inner_product_opt(vec, centroids + c * vecdim, vecdim);
        if (ip > best_ip) {
            best_ip = ip;
            best = static_cast<uint32_t>(c);
        }
    }
    return best;
}

static inline IVFIndex build_ivf_index(
    float* base,
    size_t base_number,
    size_t vecdim,
    size_t nlist,
    size_t train_n,
    size_t iters
) {
    IVFIndex index;
    index.base_number = base_number;
    index.vecdim = vecdim;

    if (base_number == 0 || vecdim == 0) {
        index.nlist = 0;
        return index;
    }

    if (nlist == 0) nlist = 1;
    if (nlist > base_number) nlist = base_number;
    if (train_n == 0 || train_n > base_number) train_n = base_number;
    if (train_n < nlist) train_n = nlist;

    index.nlist = nlist;
    index.centroids.assign(nlist * vecdim, 0.0f);
    index.lists.assign(nlist, std::vector<uint32_t>());

    // Deterministic initialization.  It keeps the experiment reproducible and
    // avoids saving a large trained index in the workspace.
    for (size_t c = 0; c < nlist; ++c) {
        size_t sid = ivf_sample_id(c * train_n / nlist, train_n, base_number);
        const float* src = base + sid * vecdim;
        float* dst = index.centroids.data() + c * vecdim;
        for (size_t d = 0; d < vecdim; ++d) dst[d] = src[d];
        ivf_normalize(dst, vecdim);
    }

    std::vector<uint32_t> assign(train_n, 0);
    std::vector<float> sums(nlist * vecdim, 0.0f);
    std::vector<int> counts(nlist, 0);

    // Lightweight spherical k-means on sampled base vectors.  Since the query
    // metric is inner product, centroids are normalized after each update.
    for (size_t iter = 0; iter < iters; ++iter) {
        std::fill(sums.begin(), sums.end(), 0.0f);
        std::fill(counts.begin(), counts.end(), 0);

        for (size_t s = 0; s < train_n; ++s) {
            size_t sid = ivf_sample_id(s, train_n, base_number);
            const float* vec = base + sid * vecdim;
            uint32_t cid = ivf_nearest_centroid(vec, index.centroids.data(), nlist, vecdim);
            assign[s] = cid;
            ++counts[cid];

            float* sum_ptr = sums.data() + static_cast<size_t>(cid) * vecdim;
            for (size_t d = 0; d < vecdim; ++d) {
                sum_ptr[d] += vec[d];
            }
        }

        for (size_t c = 0; c < nlist; ++c) {
            float* center = index.centroids.data() + c * vecdim;
            if (counts[c] > 0) {
                float inv = 1.0f / static_cast<float>(counts[c]);
                for (size_t d = 0; d < vecdim; ++d) {
                    center[d] = sums[c * vecdim + d] * inv;
                }
            } else {
                size_t sid = ivf_sample_id((c * 131 + iter * 17) % train_n, train_n, base_number);
                const float* src = base + sid * vecdim;
                for (size_t d = 0; d < vecdim; ++d) center[d] = src[d];
            }
            ivf_normalize(center, vecdim);
        }
    }

    // Assign every base vector to exactly one inverted list.
    std::vector<size_t> counts_all(nlist, 0);
    for (size_t i = 0; i < base_number; ++i) {
        uint32_t cid = ivf_nearest_centroid(base + i * vecdim, index.centroids.data(), nlist, vecdim);
        ++counts_all[cid];
    }
    for (size_t c = 0; c < nlist; ++c) {
        index.lists[c].reserve(counts_all[c]);
    }
    for (size_t i = 0; i < base_number; ++i) {
        uint32_t cid = ivf_nearest_centroid(base + i * vecdim, index.centroids.data(), nlist, vecdim);
        index.lists[cid].push_back(static_cast<uint32_t>(i));
    }

    return index;
}

static inline void ivf_select_probe_lists(
    const IVFIndex& index,
    const float* query,
    size_t nprobe,
    std::vector<uint32_t>& probe_ids
) {
    probe_ids.clear();
    if (index.nlist == 0) return;

    if (nprobe == 0) nprobe = 1;
    if (nprobe > index.nlist) nprobe = index.nlist;

    typedef std::pair<float, uint32_t> Item;
    std::vector<Item> center_scores(index.nlist);
    for (size_t c = 0; c < index.nlist; ++c) {
        float ip = inner_product_opt(query, index.centroids.data() + c * index.vecdim, index.vecdim);
        center_scores[c] = Item(ip, static_cast<uint32_t>(c));
    }

    if (nprobe < center_scores.size()) {
        std::nth_element(
            center_scores.begin(),
            center_scores.begin() + static_cast<std::ptrdiff_t>(nprobe),
            center_scores.end(),
            [](const Item& a, const Item& b) {
                if (a.first != b.first) return a.first > b.first;
                return a.second < b.second;
            }
        );
        center_scores.resize(nprobe);
    }

    std::sort(
        center_scores.begin(),
        center_scores.end(),
        [](const Item& a, const Item& b) {
            if (a.first != b.first) return a.first > b.first;
            return a.second < b.second;
        }
    );

    probe_ids.reserve(center_scores.size());
    for (size_t i = 0; i < center_scores.size(); ++i) {
        probe_ids.push_back(center_scores[i].second);
    }
}

static inline std::priority_queue<std::pair<float, uint32_t> > ivf_search(
    float* base,
    float* query,
    const IVFIndex& index,
    size_t k,
    size_t nprobe
) {
    std::priority_queue<std::pair<float, uint32_t> > result;
    if (index.nlist == 0) return result;

    std::vector<uint32_t> probe_ids;
    ivf_select_probe_lists(index, query, nprobe, probe_ids);

    for (size_t p = 0; p < probe_ids.size(); ++p) {
        const std::vector<uint32_t>& ids = index.lists[probe_ids[p]];
        for (size_t j = 0; j < ids.size(); ++j) {
            uint32_t id = ids[j];
            const float* base_vec = base + static_cast<size_t>(id) * index.vecdim;
            float ip = inner_product_opt(base_vec, query, index.vecdim);
            ann_topk_push(result, 1.0f - ip, id, k);
        }
    }

    return result;
}
