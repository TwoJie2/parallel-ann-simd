#pragma once

#include <queue>
#include <utility>
#include <cstdint>
#include <cstddef>

#if defined(__ARM_NEON)
#include <arm_neon.h>
#endif

static inline float inner_product_opt(const float* a, const float* b, size_t dim)
{
#if defined(__ARM_NEON)
    float32x4_t sum0 = vdupq_n_f32(0.0f);
    float32x4_t sum1 = vdupq_n_f32(0.0f);
    float32x4_t sum2 = vdupq_n_f32(0.0f);
    float32x4_t sum3 = vdupq_n_f32(0.0f);

    size_t d = 0;

    for (; d + 16 <= dim; d += 16) {
        float32x4_t a0 = vld1q_f32(a + d);
        float32x4_t a1 = vld1q_f32(a + d + 4);
        float32x4_t a2 = vld1q_f32(a + d + 8);
        float32x4_t a3 = vld1q_f32(a + d + 12);

        float32x4_t b0 = vld1q_f32(b + d);
        float32x4_t b1 = vld1q_f32(b + d + 4);
        float32x4_t b2 = vld1q_f32(b + d + 8);
        float32x4_t b3 = vld1q_f32(b + d + 12);

        sum0 = vmlaq_f32(sum0, a0, b0);
        sum1 = vmlaq_f32(sum1, a1, b1);
        sum2 = vmlaq_f32(sum2, a2, b2);
        sum3 = vmlaq_f32(sum3, a3, b3);
    }

    sum0 = vaddq_f32(sum0, sum1);
    sum2 = vaddq_f32(sum2, sum3);
    sum0 = vaddq_f32(sum0, sum2);

    float tmp[4];
    vst1q_f32(tmp, sum0);

    float sum = tmp[0] + tmp[1] + tmp[2] + tmp[3];

    for (; d < dim; ++d) {
        sum += a[d] * b[d];
    }

    return sum;
#else
    float sum = 0.0f;

    for (size_t d = 0; d < dim; ++d) {
        sum += a[d] * b[d];
    }

    return sum;
#endif
}

static inline std::priority_queue<std::pair<float, uint32_t> > flat_search_opt(
    float* base,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k
) {
    std::priority_queue<std::pair<float, uint32_t> > q;

    for (size_t i = 0; i < base_number; ++i) {
        const float* base_vec = base + i * vecdim;

        float ip = inner_product_opt(base_vec, query, vecdim);
        float dis = 1.0f - ip;

        if (q.size() < k) {
            q.push({dis, static_cast<uint32_t>(i)});
        } else if (dis < q.top().first) {
            q.push({dis, static_cast<uint32_t>(i)});
            q.pop();
        }
    }

    return q;
}