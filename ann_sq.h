#pragma once

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstddef>
#include <functional>
#include <limits>
#include <queue>
#include <utility>
#include <vector>

#include "ann_opt.h"

#if defined(__ARM_NEON)
#include <arm_neon.h>
#endif

struct SQIndex {
    std::vector<int8_t> base_q;
    float scale;
    size_t base_number;
    size_t vecdim;
};

static inline int8_t clamp_to_i8(int x)
{
    if (x > 127) return 127;
    if (x < -127) return -127;
    return static_cast<int8_t>(x);
}

static inline SQIndex build_sq_index(float* base, size_t base_number, size_t vecdim)
{
    SQIndex index;
    index.base_number = base_number;
    index.vecdim = vecdim;
    index.base_q.resize(base_number * vecdim);

    float max_abs = 0.0f;

    for (size_t i = 0; i < base_number * vecdim; ++i) {
        float v = std::fabs(base[i]);
        if (v > max_abs) {
            max_abs = v;
        }
    }

    if (max_abs < 1e-12f) {
        index.scale = 1.0f;
    } else {
        index.scale = 127.0f / max_abs;
    }

    for (size_t i = 0; i < base_number * vecdim; ++i) {
        int q = static_cast<int>(std::round(base[i] * index.scale));
        index.base_q[i] = clamp_to_i8(q);
    }

    return index;
}

static inline void quantize_query(
    const float* query,
    int8_t* query_q,
    size_t vecdim,
    float scale
) {
    for (size_t d = 0; d < vecdim; ++d) {
        int q = static_cast<int>(std::round(query[d] * scale));
        query_q[d] = clamp_to_i8(q);
    }
}

#if defined(__ARM_NEON)
static inline int32_t horizontal_sum_s32x4(int32x4_t v)
{
    int32_t tmp[4];
    vst1q_s32(tmp, v);
    return tmp[0] + tmp[1] + tmp[2] + tmp[3];
}
#endif

static inline int32_t inner_product_i8_opt(const int8_t* a, const int8_t* b, size_t dim)
{
#if defined(__ARM_NEON) && defined(__ARM_FEATURE_DOTPROD)
    int32x4_t acc = vdupq_n_s32(0);

    size_t d = 0;
    for (; d + 16 <= dim; d += 16) {
        int8x16_t va = vld1q_s8(a + d);
        int8x16_t vb = vld1q_s8(b + d);
        acc = vdotq_s32(acc, va, vb);
    }

    int32_t sum = horizontal_sum_s32x4(acc);

    for (; d < dim; ++d) {
        sum += static_cast<int32_t>(a[d]) * static_cast<int32_t>(b[d]);
    }

    return sum;

#elif defined(__ARM_NEON)
    int32x4_t acc0 = vdupq_n_s32(0);
    int32x4_t acc1 = vdupq_n_s32(0);

    size_t d = 0;
    for (; d + 16 <= dim; d += 16) {
        int8x16_t va = vld1q_s8(a + d);
        int8x16_t vb = vld1q_s8(b + d);

        int16x8_t prod_low = vmull_s8(vget_low_s8(va), vget_low_s8(vb));
        int16x8_t prod_high = vmull_s8(vget_high_s8(va), vget_high_s8(vb));

        acc0 = vaddq_s32(acc0, vpaddlq_s16(prod_low));
        acc1 = vaddq_s32(acc1, vpaddlq_s16(prod_high));
    }

    int32x4_t acc = vaddq_s32(acc0, acc1);
    int32_t sum = horizontal_sum_s32x4(acc);

    for (; d < dim; ++d) {
        sum += static_cast<int32_t>(a[d]) * static_cast<int32_t>(b[d]);
    }

    return sum;
#else
    int32_t sum = 0;

    for (size_t d = 0; d < dim; ++d) {
        sum += static_cast<int32_t>(a[d]) * static_cast<int32_t>(b[d]);
    }

    return sum;
#endif
}

static inline std::priority_queue<std::pair<float, uint32_t> > sq_search_rerank(
    float* base,
    float* query,
    const SQIndex& index,
    size_t k,
    size_t p
) {
    if (p < k) {
        p = k;
    }

    if (p > index.base_number) {
        p = index.base_number;
    }

    std::vector<int8_t> query_q(index.vecdim);
    quantize_query(query, query_q.data(), index.vecdim, index.scale);

    typedef std::pair<int32_t, uint32_t> CoarseItem;

    std::vector<CoarseItem> coarse_storage;
    coarse_storage.reserve(p + 1);

    std::priority_queue<
        CoarseItem,
        std::vector<CoarseItem>,
        std::greater<CoarseItem>
    > coarse(std::greater<CoarseItem>(), std::move(coarse_storage));

    for (size_t i = 0; i < index.base_number; ++i) {
        const int8_t* base_vec_q = index.base_q.data() + i * index.vecdim;
        int32_t approx_ip = inner_product_i8_opt(base_vec_q, query_q.data(), index.vecdim);

        CoarseItem item(approx_ip, static_cast<uint32_t>(i));

        if (coarse.size() < p) {
            coarse.push(item);
        } else if (item.first > coarse.top().first) {
            coarse.pop();
            coarse.push(item);
        }
    }

    std::priority_queue<std::pair<float, uint32_t> > result;

    while (!coarse.empty()) {
        uint32_t id = coarse.top().second;
        coarse.pop();

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