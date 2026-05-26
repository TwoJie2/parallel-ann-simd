#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>
#include <pthread.h>

#include "ann_opt.h"
#include "ann_mt_common.h"

#ifdef _OPENMP
#include <omp.h>
#endif

static inline std::priority_queue<std::pair<float, uint32_t> > flat_search_opt_openmp(
    float* base,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k,
    size_t thread_count
) {
    if (thread_count <= 1 || base_number < 1024) {
        return flat_search_opt(base, query, base_number, vecdim, k);
    }

#ifndef _OPENMP
    (void)thread_count;
    return flat_search_opt(base, query, base_number, vecdim, k);
#else
    int nt = static_cast<int>(thread_count);
    std::vector<std::priority_queue<std::pair<float, uint32_t> > > local(nt);

    #pragma omp parallel num_threads(nt)
    {
        int tid = omp_get_thread_num();
        std::priority_queue<std::pair<float, uint32_t> >& q = local[tid];

        #pragma omp for schedule(static)
        for (long long i = 0; i < static_cast<long long>(base_number); ++i) {
            const float* base_vec = base + static_cast<size_t>(i) * vecdim;
            float ip = inner_product_opt(base_vec, query, vecdim);
            float dis = 1.0f - ip;
            ann_topk_push(q, dis, static_cast<uint32_t>(i), k);
        }
    }

    std::priority_queue<std::pair<float, uint32_t> > result;
    for (int t = 0; t < nt; ++t) {
        ann_merge_topk(result, local[t], k);
    }
    return result;
#endif
}

struct FlatPthreadArg {
    float* base;
    float* query;
    size_t vecdim;
    size_t k;
    size_t begin;
    size_t end;
    std::priority_queue<std::pair<float, uint32_t> > local;
};

static inline void* flat_pthread_worker(void* ptr)
{
    FlatPthreadArg* arg = static_cast<FlatPthreadArg*>(ptr);
    for (size_t i = arg->begin; i < arg->end; ++i) {
        const float* base_vec = arg->base + i * arg->vecdim;
        float ip = inner_product_opt(base_vec, arg->query, arg->vecdim);
        float dis = 1.0f - ip;
        ann_topk_push(arg->local, dis, static_cast<uint32_t>(i), arg->k);
    }
    return NULL;
}

static inline std::priority_queue<std::pair<float, uint32_t> > flat_search_opt_pthread(
    float* base,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k,
    size_t thread_count
) {
    if (thread_count <= 1 || base_number < 1024) {
        return flat_search_opt(base, query, base_number, vecdim, k);
    }

    thread_count = std::min(thread_count, base_number);
    std::vector<pthread_t> handles(thread_count);
    std::vector<FlatPthreadArg> args(thread_count);

    size_t chunk = (base_number + thread_count - 1) / thread_count;
    for (size_t t = 0; t < thread_count; ++t) {
        args[t].base = base;
        args[t].query = query;
        args[t].vecdim = vecdim;
        args[t].k = k;
        args[t].begin = std::min(t * chunk, base_number);
        args[t].end = std::min((t + 1) * chunk, base_number);
        pthread_create(&handles[t], NULL, flat_pthread_worker, &args[t]);
    }

    std::priority_queue<std::pair<float, uint32_t> > result;
    for (size_t t = 0; t < thread_count; ++t) {
        pthread_join(handles[t], NULL);
        ann_merge_topk(result, args[t].local, k);
    }
    return result;
}
