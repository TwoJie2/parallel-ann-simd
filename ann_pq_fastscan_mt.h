#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>
#include <pthread.h>

#include "ann_pq_fastscan.h"
#include "ann_mt_common.h"

#ifdef _OPENMP
#include <omp.h>
#endif

typedef std::pair<uint16_t, uint32_t> PQFSCoarseItem;

static inline void pqfs_select_top_p(std::vector<PQFSCoarseItem>& coarse_items, size_t p)
{
    if (p < coarse_items.size()) {
        std::nth_element(
            coarse_items.begin(),
            coarse_items.begin() + static_cast<std::ptrdiff_t>(p),
            coarse_items.end(),
            [](const PQFSCoarseItem& a, const PQFSCoarseItem& b) {
                if (a.first != b.first) return a.first > b.first;
                return a.second < b.second;
            }
        );
        coarse_items.resize(p);
    }
}

static inline std::priority_queue<std::pair<float, uint32_t> > pqfs_rerank_candidates_openmp(
    float* base,
    float* query,
    const PQFastScanIndex& index,
    const std::vector<PQFSCoarseItem>& coarse_items,
    size_t k,
    size_t thread_count
) {
#ifndef _OPENMP
    (void)thread_count;
    std::priority_queue<std::pair<float, uint32_t> > result;
    for (size_t i = 0; i < coarse_items.size(); ++i) {
        uint32_t id = coarse_items[i].second;
        const float* base_vec = base + static_cast<size_t>(id) * index.vecdim;
        float ip = inner_product_opt(base_vec, query, index.vecdim);
        ann_topk_push(result, 1.0f - ip, id, k);
    }
    return result;
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
            const float* base_vec = base + static_cast<size_t>(id) * index.vecdim;
            float ip = inner_product_opt(base_vec, query, index.vecdim);
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

static inline std::priority_queue<std::pair<float, uint32_t> > pq_fastscan_search_rerank_openmp(
    float* base,
    float* query,
    const PQFastScanIndex& index,
    size_t k,
    size_t p,
    size_t thread_count
) {
    if (thread_count <= 1 || index.base_number < 4096) {
        return pq_fastscan_search_rerank(base, query, index, k, p);
    }

    if (p < k) p = k;
    if (p > index.base_number) p = index.base_number;

    std::vector<float> lut_float;
    std::vector<uint8_t> lut_u8;
    pqfs_build_lut_float(query, index, lut_float);
    pqfs_quantize_lut_u8(lut_float, index, lut_u8);

    std::vector<PQFSCoarseItem> coarse_items(index.base_number);

#ifndef _OPENMP
    (void)thread_count;
    uint16_t scores[16];
    for (size_t block = 0; block < index.block_number; ++block) {
        pqfs_scan_one_block(index, lut_u8, block, scores);
        for (size_t lane = 0; lane < index.block_size; ++lane) {
            size_t id = block * index.block_size + lane;
            if (id >= index.base_number) break;
            coarse_items[id] = PQFSCoarseItem(scores[lane], static_cast<uint32_t>(id));
        }
    }
#else
    int nt = static_cast<int>(std::max<size_t>(1, thread_count));
    #pragma omp parallel num_threads(nt)
    {
        uint16_t scores[16];
        #pragma omp for schedule(static)
        for (long long b = 0; b < static_cast<long long>(index.block_number); ++b) {
            size_t block = static_cast<size_t>(b);
            pqfs_scan_one_block(index, lut_u8, block, scores);
            for (size_t lane = 0; lane < index.block_size; ++lane) {
                size_t id = block * index.block_size + lane;
                if (id >= index.base_number) break;
                coarse_items[id] = PQFSCoarseItem(scores[lane], static_cast<uint32_t>(id));
            }
        }
    }
#endif

    pqfs_select_top_p(coarse_items, p);
    return pqfs_rerank_candidates_openmp(base, query, index, coarse_items, k, thread_count);
}

struct PQFSPthreadScanArg {
    const PQFastScanIndex* index;
    const std::vector<uint8_t>* lut_u8;
    std::vector<PQFSCoarseItem>* coarse_items;
    size_t block_begin;
    size_t block_end;
};

static inline void* pqfs_pthread_scan_worker(void* ptr)
{
    PQFSPthreadScanArg* arg = static_cast<PQFSPthreadScanArg*>(ptr);
    uint16_t scores[16];
    const PQFastScanIndex& index = *arg->index;
    const std::vector<uint8_t>& lut_u8 = *arg->lut_u8;
    std::vector<PQFSCoarseItem>& coarse_items = *arg->coarse_items;

    for (size_t block = arg->block_begin; block < arg->block_end; ++block) {
        pqfs_scan_one_block(index, lut_u8, block, scores);
        for (size_t lane = 0; lane < index.block_size; ++lane) {
            size_t id = block * index.block_size + lane;
            if (id >= index.base_number) break;
            coarse_items[id] = PQFSCoarseItem(scores[lane], static_cast<uint32_t>(id));
        }
    }
    return NULL;
}

struct PQFSPthreadRerankArg {
    float* base;
    float* query;
    const PQFastScanIndex* index;
    const std::vector<PQFSCoarseItem>* coarse_items;
    size_t k;
    size_t begin;
    size_t end;
    std::priority_queue<std::pair<float, uint32_t> > local;
};

static inline void* pqfs_pthread_rerank_worker(void* ptr)
{
    PQFSPthreadRerankArg* arg = static_cast<PQFSPthreadRerankArg*>(ptr);
    const PQFastScanIndex& index = *arg->index;
    const std::vector<PQFSCoarseItem>& coarse_items = *arg->coarse_items;

    for (size_t i = arg->begin; i < arg->end; ++i) {
        uint32_t id = coarse_items[i].second;
        const float* base_vec = arg->base + static_cast<size_t>(id) * index.vecdim;
        float ip = inner_product_opt(base_vec, arg->query, index.vecdim);
        ann_topk_push(arg->local, 1.0f - ip, id, arg->k);
    }
    return NULL;
}

static inline std::priority_queue<std::pair<float, uint32_t> > pq_fastscan_search_rerank_pthread(
    float* base,
    float* query,
    const PQFastScanIndex& index,
    size_t k,
    size_t p,
    size_t thread_count
) {
    if (thread_count <= 1 || index.base_number < 4096) {
        return pq_fastscan_search_rerank(base, query, index, k, p);
    }

    if (p < k) p = k;
    if (p > index.base_number) p = index.base_number;
    thread_count = std::min(thread_count, std::max<size_t>(1, index.block_number));

    std::vector<float> lut_float;
    std::vector<uint8_t> lut_u8;
    pqfs_build_lut_float(query, index, lut_float);
    pqfs_quantize_lut_u8(lut_float, index, lut_u8);

    std::vector<PQFSCoarseItem> coarse_items(index.base_number);

    std::vector<pthread_t> scan_handles(thread_count);
    std::vector<PQFSPthreadScanArg> scan_args(thread_count);
    size_t block_chunk = (index.block_number + thread_count - 1) / thread_count;

    for (size_t t = 0; t < thread_count; ++t) {
        scan_args[t].index = &index;
        scan_args[t].lut_u8 = &lut_u8;
        scan_args[t].coarse_items = &coarse_items;
        scan_args[t].block_begin = std::min(t * block_chunk, index.block_number);
        scan_args[t].block_end = std::min((t + 1) * block_chunk, index.block_number);
        pthread_create(&scan_handles[t], NULL, pqfs_pthread_scan_worker, &scan_args[t]);
    }
    for (size_t t = 0; t < thread_count; ++t) {
        pthread_join(scan_handles[t], NULL);
    }

    pqfs_select_top_p(coarse_items, p);

    std::vector<pthread_t> rr_handles(thread_count);
    std::vector<PQFSPthreadRerankArg> rr_args(thread_count);
    size_t item_chunk = (coarse_items.size() + thread_count - 1) / thread_count;

    for (size_t t = 0; t < thread_count; ++t) {
        rr_args[t].base = base;
        rr_args[t].query = query;
        rr_args[t].index = &index;
        rr_args[t].coarse_items = &coarse_items;
        rr_args[t].k = k;
        rr_args[t].begin = std::min(t * item_chunk, coarse_items.size());
        rr_args[t].end = std::min((t + 1) * item_chunk, coarse_items.size());
        pthread_create(&rr_handles[t], NULL, pqfs_pthread_rerank_worker, &rr_args[t]);
    }

    std::priority_queue<std::pair<float, uint32_t> > result;
    for (size_t t = 0; t < thread_count; ++t) {
        pthread_join(rr_handles[t], NULL);
        ann_merge_topk(result, rr_args[t].local, k);
    }
    return result;
}
