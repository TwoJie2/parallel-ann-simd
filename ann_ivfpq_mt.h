#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>
#include <pthread.h>

#include "ann_ivfpq.h"

#ifdef _OPENMP
#include <omp.h>
#endif

static inline std::priority_queue<std::pair<float, uint32_t> > ivfpq_rerank_openmp(
    float* base,
    const float* query,
    const PQFastScanIndex& pq_index,
    const std::vector<IVFPQCoarseItem>& coarse_items,
    size_t k,
    size_t thread_count
) {
#ifndef _OPENMP
    (void)thread_count;
    return ivfpq_rerank_serial(base, query, pq_index, coarse_items, k);
#else
    int nt = static_cast<int>(std::max<size_t>(1, thread_count));
    std::vector<std::priority_queue<std::pair<float, uint32_t> > > local(nt);

    #pragma omp parallel num_threads(nt)
    {
        int tid = omp_get_thread_num();
        std::priority_queue<std::pair<float, uint32_t> >& q = local[tid];
        #pragma omp for schedule(static)
        for (long long i = 0; i < static_cast<long long>(coarse_items.size()); ++i) {
            uint32_t id = coarse_items[static_cast<size_t>(i)].second;
            const float* base_vec = base + static_cast<size_t>(id) * pq_index.vecdim;
            float ip = inner_product_opt(base_vec, query, pq_index.vecdim);
            ann_topk_push(q, 1.0f - ip, id, k);
        }
    }

    std::priority_queue<std::pair<float, uint32_t> > result;
    for (int t = 0; t < nt; ++t) {
        ann_merge_topk(result, local[t], k);
    }
    return result;
#endif
}

static inline std::priority_queue<std::pair<float, uint32_t> > ivfpq_search_rerank_openmp(
    float* base,
    float* query,
    const PQFastScanIndex& pq_index,
    const IVFIndex& ivf_index,
    size_t k,
    size_t nprobe,
    size_t p,
    size_t thread_count
) {
    if (thread_count <= 1 || ivf_index.nlist == 0) {
        return ivfpq_search_rerank(base, query, pq_index, ivf_index, k, nprobe, p);
    }

    std::vector<uint32_t> candidate_ids;
    ivfpq_collect_candidate_ids(ivf_index, query, nprobe, candidate_ids);
    if (candidate_ids.empty()) {
        return std::priority_queue<std::pair<float, uint32_t> >();
    }

    if (p < k) p = k;
    if (p > candidate_ids.size()) p = candidate_ids.size();

    std::vector<float> lut_float;
    std::vector<uint8_t> lut_u8;
    pqfs_build_lut_float(query, pq_index, lut_float);
    pqfs_quantize_lut_u8(lut_float, pq_index, lut_u8);

    std::vector<IVFPQCoarseItem> coarse_items(candidate_ids.size());

#ifndef _OPENMP
    (void)thread_count;
    for (size_t i = 0; i < candidate_ids.size(); ++i) {
        uint32_t id = candidate_ids[i];
        coarse_items[i] = IVFPQCoarseItem(ivfpq_score_one_id(pq_index, lut_u8, id), id);
    }
#else
    int nt = static_cast<int>(std::max<size_t>(1, thread_count));
    #pragma omp parallel for schedule(static) num_threads(nt)
    for (long long i = 0; i < static_cast<long long>(candidate_ids.size()); ++i) {
        uint32_t id = candidate_ids[static_cast<size_t>(i)];
        coarse_items[static_cast<size_t>(i)] = IVFPQCoarseItem(ivfpq_score_one_id(pq_index, lut_u8, id), id);
    }
#endif

    ivfpq_select_top_p(coarse_items, p);
    return ivfpq_rerank_openmp(base, query, pq_index, coarse_items, k, thread_count);
}

struct IVFPQPthreadScanArg {
    const PQFastScanIndex* pq_index;
    const std::vector<uint8_t>* lut_u8;
    const std::vector<uint32_t>* candidate_ids;
    std::vector<IVFPQCoarseItem>* coarse_items;
    size_t begin;
    size_t end;
};

static inline void* ivfpq_pthread_scan_worker(void* ptr)
{
    IVFPQPthreadScanArg* arg = static_cast<IVFPQPthreadScanArg*>(ptr);
    const PQFastScanIndex& pq_index = *arg->pq_index;
    const std::vector<uint8_t>& lut_u8 = *arg->lut_u8;
    const std::vector<uint32_t>& candidate_ids = *arg->candidate_ids;
    std::vector<IVFPQCoarseItem>& coarse_items = *arg->coarse_items;

    for (size_t i = arg->begin; i < arg->end; ++i) {
        uint32_t id = candidate_ids[i];
        coarse_items[i] = IVFPQCoarseItem(ivfpq_score_one_id(pq_index, lut_u8, id), id);
    }
    return NULL;
}

struct IVFPQPthreadRerankArg {
    float* base;
    const float* query;
    const PQFastScanIndex* pq_index;
    const std::vector<IVFPQCoarseItem>* coarse_items;
    size_t k;
    size_t begin;
    size_t end;
    std::priority_queue<std::pair<float, uint32_t> > local;
};

static inline void* ivfpq_pthread_rerank_worker(void* ptr)
{
    IVFPQPthreadRerankArg* arg = static_cast<IVFPQPthreadRerankArg*>(ptr);
    const PQFastScanIndex& pq_index = *arg->pq_index;
    const std::vector<IVFPQCoarseItem>& coarse_items = *arg->coarse_items;

    for (size_t i = arg->begin; i < arg->end; ++i) {
        uint32_t id = coarse_items[i].second;
        const float* base_vec = arg->base + static_cast<size_t>(id) * pq_index.vecdim;
        float ip = inner_product_opt(base_vec, arg->query, pq_index.vecdim);
        ann_topk_push(arg->local, 1.0f - ip, id, arg->k);
    }
    return NULL;
}

static inline std::priority_queue<std::pair<float, uint32_t> > ivfpq_search_rerank_pthread(
    float* base,
    float* query,
    const PQFastScanIndex& pq_index,
    const IVFIndex& ivf_index,
    size_t k,
    size_t nprobe,
    size_t p,
    size_t thread_count
) {
    if (thread_count <= 1 || ivf_index.nlist == 0) {
        return ivfpq_search_rerank(base, query, pq_index, ivf_index, k, nprobe, p);
    }

    std::vector<uint32_t> candidate_ids;
    ivfpq_collect_candidate_ids(ivf_index, query, nprobe, candidate_ids);
    if (candidate_ids.empty()) {
        return std::priority_queue<std::pair<float, uint32_t> >();
    }

    if (p < k) p = k;
    if (p > candidate_ids.size()) p = candidate_ids.size();

    thread_count = std::max<size_t>(1, std::min<size_t>(thread_count, candidate_ids.size()));

    std::vector<float> lut_float;
    std::vector<uint8_t> lut_u8;
    pqfs_build_lut_float(query, pq_index, lut_float);
    pqfs_quantize_lut_u8(lut_float, pq_index, lut_u8);

    std::vector<IVFPQCoarseItem> coarse_items(candidate_ids.size());

    std::vector<pthread_t> scan_handles(thread_count);
    std::vector<IVFPQPthreadScanArg> scan_args(thread_count);
    size_t chunk = (candidate_ids.size() + thread_count - 1) / thread_count;

    for (size_t t = 0; t < thread_count; ++t) {
        scan_args[t].pq_index = &pq_index;
        scan_args[t].lut_u8 = &lut_u8;
        scan_args[t].candidate_ids = &candidate_ids;
        scan_args[t].coarse_items = &coarse_items;
        scan_args[t].begin = std::min(t * chunk, candidate_ids.size());
        scan_args[t].end = std::min((t + 1) * chunk, candidate_ids.size());
        pthread_create(&scan_handles[t], NULL, ivfpq_pthread_scan_worker, &scan_args[t]);
    }
    for (size_t t = 0; t < thread_count; ++t) {
        pthread_join(scan_handles[t], NULL);
    }

    ivfpq_select_top_p(coarse_items, p);

    thread_count = std::max<size_t>(1, std::min<size_t>(thread_count, coarse_items.size()));
    std::vector<pthread_t> rr_handles(thread_count);
    std::vector<IVFPQPthreadRerankArg> rr_args(thread_count);
    size_t rr_chunk = (coarse_items.size() + thread_count - 1) / thread_count;

    for (size_t t = 0; t < thread_count; ++t) {
        rr_args[t].base = base;
        rr_args[t].query = query;
        rr_args[t].pq_index = &pq_index;
        rr_args[t].coarse_items = &coarse_items;
        rr_args[t].k = k;
        rr_args[t].begin = std::min(t * rr_chunk, coarse_items.size());
        rr_args[t].end = std::min((t + 1) * rr_chunk, coarse_items.size());
        pthread_create(&rr_handles[t], NULL, ivfpq_pthread_rerank_worker, &rr_args[t]);
    }

    std::priority_queue<std::pair<float, uint32_t> > result;
    for (size_t t = 0; t < thread_count; ++t) {
        pthread_join(rr_handles[t], NULL);
        ann_merge_topk(result, rr_args[t].local, k);
    }
    return result;
}
