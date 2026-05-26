#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>
#include <pthread.h>

#include "ann_ivf.h"
#include "ann_mt_common.h"

#ifdef _OPENMP
#include <omp.h>
#endif

static inline std::priority_queue<std::pair<float, uint32_t> > ivf_search_openmp(
    float* base,
    float* query,
    const IVFIndex& index,
    size_t k,
    size_t nprobe,
    size_t thread_count
) {
    if (thread_count <= 1 || index.nlist == 0) {
        return ivf_search(base, query, index, k, nprobe);
    }

#ifndef _OPENMP
    (void)thread_count;
    return ivf_search(base, query, index, k, nprobe);
#else
    std::vector<uint32_t> probe_ids;
    ivf_select_probe_lists(index, query, nprobe, probe_ids);

    int nt = static_cast<int>(std::max<size_t>(1, thread_count));
    std::vector<std::priority_queue<std::pair<float, uint32_t> > > local(nt);

    #pragma omp parallel num_threads(nt)
    {
        int tid = omp_get_thread_num();
        std::priority_queue<std::pair<float, uint32_t> >& q = local[tid];

        // Inverted lists are often imbalanced, so dynamic scheduling is safer
        // than static list assignment.
        #pragma omp for schedule(dynamic, 1)
        for (long long pp = 0; pp < static_cast<long long>(probe_ids.size()); ++pp) {
            const std::vector<uint32_t>& ids = index.lists[probe_ids[static_cast<size_t>(pp)]];
            for (size_t j = 0; j < ids.size(); ++j) {
                uint32_t id = ids[j];
                const float* base_vec = base + static_cast<size_t>(id) * index.vecdim;
                float ip = inner_product_opt(base_vec, query, index.vecdim);
                ann_topk_push(q, 1.0f - ip, id, k);
            }
        }
    }

    std::priority_queue<std::pair<float, uint32_t> > result;
    for (int t = 0; t < nt; ++t) {
        ann_merge_topk(result, local[t], k);
    }
    return result;
#endif
}

struct IVFPthreadArg {
    float* base;
    float* query;
    const IVFIndex* index;
    const std::vector<uint32_t>* probe_ids;
    size_t k;
    size_t begin;
    size_t end;
    std::priority_queue<std::pair<float, uint32_t> > local;
};

static inline void* ivf_pthread_worker(void* ptr)
{
    IVFPthreadArg* arg = static_cast<IVFPthreadArg*>(ptr);

    for (size_t pp = arg->begin; pp < arg->end; ++pp) {
        uint32_t cid = (*(arg->probe_ids))[pp];
        const std::vector<uint32_t>& ids = arg->index->lists[cid];

        for (size_t j = 0; j < ids.size(); ++j) {
            uint32_t id = ids[j];
            const float* base_vec = arg->base + static_cast<size_t>(id) * arg->index->vecdim;
            float ip = inner_product_opt(base_vec, arg->query, arg->index->vecdim);
            ann_topk_push(arg->local, 1.0f - ip, id, arg->k);
        }
    }

    return NULL;
}

static inline std::priority_queue<std::pair<float, uint32_t> > ivf_search_pthread(
    float* base,
    float* query,
    const IVFIndex& index,
    size_t k,
    size_t nprobe,
    size_t thread_count
) {
    if (thread_count <= 1 || index.nlist == 0) {
        return ivf_search(base, query, index, k, nprobe);
    }

    std::vector<uint32_t> probe_ids;
    ivf_select_probe_lists(index, query, nprobe, probe_ids);

    if (probe_ids.empty()) {
        return std::priority_queue<std::pair<float, uint32_t> >();
    }

    thread_count = std::max<size_t>(1, std::min<size_t>(thread_count, probe_ids.size()));
    std::vector<pthread_t> handles(thread_count);
    std::vector<IVFPthreadArg> args(thread_count);

    size_t chunk = (probe_ids.size() + thread_count - 1) / thread_count;
    for (size_t t = 0; t < thread_count; ++t) {
        args[t].base = base;
        args[t].query = query;
        args[t].index = &index;
        args[t].probe_ids = &probe_ids;
        args[t].k = k;
        args[t].begin = std::min(t * chunk, probe_ids.size());
        args[t].end = std::min((t + 1) * chunk, probe_ids.size());
        pthread_create(&handles[t], NULL, ivf_pthread_worker, &args[t]);
    }

    std::priority_queue<std::pair<float, uint32_t> > result;
    for (size_t t = 0; t < thread_count; ++t) {
        pthread_join(handles[t], NULL);
        ann_merge_topk(result, args[t].local, k);
    }

    return result;
}
