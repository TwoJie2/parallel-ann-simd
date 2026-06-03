#pragma once

#include <algorithm>
#include <cmath>
#include <cstdint>
#include <limits>
#include <memory>
#include <queue>
#include <utility>
#include <vector>

#ifdef _OPENMP
#include <omp.h>
#endif

#include "ann_hnsw.h"
#include "ann_ivf.h"
#include "ann_mpi_common.h"
#include "ann_opt.h"

struct MpiHnswShardIndex {
    HNSWAnnIndex graph;
    size_t M;
    size_t ef_construction;
    size_t ef_search;
};

struct MpiIvfHnswIndex {
    IVFIndex ivf;
    std::vector<HNSWAnnIndex> list_graphs;
    size_t M;
    size_t ef_construction;
    size_t ef_search;
    size_t non_empty_lists;
};

struct MpiHnswRouterPart {
    size_t global_part_id;
    size_t begin;
    size_t end;
    HNSWAnnIndex graph;
};

struct MpiHnswRouterIndex {
    std::vector<MpiHnswRouterPart> parts;
    HNSWAnnIndex router_graph;
    std::vector<float> all_centroids;
    std::vector<int> all_part_owners;
    std::vector<int> all_part_local_ids;
    size_t dim;
    size_t parts_per_rank;
    size_t router_probe;
    size_t M;
    size_t ef_construction;
    size_t ef_search;
};

static inline MpiHnswShardIndex build_mpi_hnsw_shard_index(
    float* local_base,
    size_t local_base_number,
    size_t dim,
    size_t M,
    size_t ef_construction,
    size_t ef_search
) {
    MpiHnswShardIndex index;
    index.M = M;
    index.ef_construction = ef_construction;
    index.ef_search = ef_search;
    index.graph = build_hnsw_ann_index_in_memory(
        local_base,
        local_base_number,
        dim,
        M,
        ef_construction,
        ef_search
    );
    return index;
}

static inline std::priority_queue<std::pair<float, uint32_t> > mpi_hnsw_shard_search(
    const MpiHnswShardIndex& index,
    const float* query,
    size_t k
) {
    return hnsw_search(index.graph, query, k);
}

static inline MpiIvfHnswIndex build_mpi_ivf_hnsw_index(
    float* local_base,
    size_t local_base_number,
    size_t dim,
    size_t nlist,
    size_t train_n,
    size_t iters,
    size_t M,
    size_t ef_construction,
    size_t ef_search
) {
    MpiIvfHnswIndex index;
    index.M = M;
    index.ef_construction = ef_construction;
    index.ef_search = ef_search;
    index.non_empty_lists = 0;
    index.ivf = build_ivf_index(local_base, local_base_number, dim, nlist, train_n, iters);
    index.list_graphs.resize(index.ivf.nlist);

    for (size_t c = 0; c < index.ivf.nlist; ++c) {
        const std::vector<uint32_t>& ids = index.ivf.lists[c];
        if (ids.empty()) continue;
        ++index.non_empty_lists;
        index.list_graphs[c] = build_hnsw_ann_index_from_ids(
            local_base,
            dim,
            ids,
            M,
            ef_construction,
            ef_search
        );
    }
    return index;
}

static inline void mpi_ivf_hnsw_search_one_list(
    float* local_base,
    const float* query,
    const IVFIndex& ivf,
    const HNSWAnnIndex& graph,
    uint32_t list_id,
    size_t k,
    std::priority_queue<std::pair<float, uint32_t> >& dst
) {
    if (list_id >= ivf.lists.size()) return;
    const std::vector<uint32_t>& ids = ivf.lists[list_id];
    if (ids.empty()) return;

    if (!graph.alg || ids.size() <= 4) {
        for (size_t i = 0; i < ids.size(); ++i) {
            uint32_t id = ids[i];
            float ip = inner_product_opt(local_base + static_cast<size_t>(id) * ivf.vecdim, query, ivf.vecdim);
            ann_mpi_topk_push(dst, 1.0f - ip, id, k);
        }
        return;
    }

    std::priority_queue<std::pair<float, uint32_t> > res = hnsw_search(graph, query, std::min(k, ids.size()));
    ann_mpi_merge_topk(dst, res, k);
}

static inline std::priority_queue<std::pair<float, uint32_t> > mpi_ivf_hnsw_search(
    float* local_base,
    const float* query,
    const MpiIvfHnswIndex& index,
    size_t k,
    size_t nprobe
) {
    std::priority_queue<std::pair<float, uint32_t> > result;
    std::vector<uint32_t> probe_ids;
    ivf_select_probe_lists(index.ivf, query, nprobe, probe_ids);
    for (size_t i = 0; i < probe_ids.size(); ++i) {
        uint32_t cid = probe_ids[i];
        if (cid < index.list_graphs.size()) {
            mpi_ivf_hnsw_search_one_list(local_base, query, index.ivf, index.list_graphs[cid], cid, k, result);
        }
    }
    return result;
}

static inline std::priority_queue<std::pair<float, uint32_t> > mpi_ivf_hnsw_search_openmp(
    float* local_base,
    const float* query,
    const MpiIvfHnswIndex& index,
    size_t k,
    size_t nprobe,
    size_t threads
) {
    std::priority_queue<std::pair<float, uint32_t> > result;
    std::vector<uint32_t> probe_ids;
    ivf_select_probe_lists(index.ivf, query, nprobe, probe_ids);
    if (probe_ids.empty()) return result;

#ifndef _OPENMP
    (void)threads;
    return mpi_ivf_hnsw_search(local_base, query, index, k, nprobe);
#else
    int nt = static_cast<int>(std::max<size_t>(1, threads));
    #pragma omp parallel num_threads(nt)
    {
        std::priority_queue<std::pair<float, uint32_t> > local_result;
        #pragma omp for schedule(dynamic, 1)
        for (long long pi = 0; pi < static_cast<long long>(probe_ids.size()); ++pi) {
            uint32_t cid = probe_ids[static_cast<size_t>(pi)];
            if (cid < index.list_graphs.size()) {
                mpi_ivf_hnsw_search_one_list(local_base, query, index.ivf, index.list_graphs[cid], cid, k, local_result);
            }
        }
        #pragma omp critical
        {
            ann_mpi_merge_topk(result, local_result, k);
        }
    }
    return result;
#endif
}

static inline void mpi_compute_centroid_for_range(
    float* base,
    size_t dim,
    size_t begin,
    size_t end,
    std::vector<float>& out
) {
    out.assign(dim, 0.0f);
    if (begin >= end || dim == 0) return;
    for (size_t i = begin; i < end; ++i) {
        const float* v = base + i * dim;
        for (size_t d = 0; d < dim; ++d) out[d] += v[d];
    }
    float inv = 1.0f / static_cast<float>(end - begin);
    double norm2 = 0.0;
    for (size_t d = 0; d < dim; ++d) {
        out[d] *= inv;
        norm2 += static_cast<double>(out[d]) * static_cast<double>(out[d]);
    }
    double inv_norm = 1.0 / (std::sqrt(norm2) + 1e-12);
    for (size_t d = 0; d < dim; ++d) out[d] = static_cast<float>(static_cast<double>(out[d]) * inv_norm);
}

static inline std::vector<uint32_t> mpi_make_range_ids(size_t begin, size_t end)
{
    std::vector<uint32_t> ids;
    ids.reserve(end > begin ? end - begin : 0);
    for (size_t i = begin; i < end; ++i) ids.push_back(static_cast<uint32_t>(i));
    return ids;
}

static inline MpiHnswRouterIndex build_mpi_hnsw_router_index(
    float* local_base,
    size_t local_base_number,
    size_t dim,
    size_t parts_per_rank,
    size_t router_probe,
    size_t M,
    size_t ef_construction,
    size_t ef_search,
    int rank,
    const std::vector<float>& all_centroids,
    const std::vector<int>& all_part_owners,
    const std::vector<int>& all_part_local_ids
) {
    MpiHnswRouterIndex index;
    index.dim = dim;
    index.parts_per_rank = parts_per_rank;
    index.router_probe = router_probe;
    index.M = M;
    index.ef_construction = ef_construction;
    index.ef_search = ef_search;
    index.all_centroids = all_centroids;
    index.all_part_owners = all_part_owners;
    index.all_part_local_ids = all_part_local_ids;

    size_t local_parts = std::min(parts_per_rank, local_base_number == 0 ? static_cast<size_t>(0) : local_base_number);
    if (local_parts == 0) return index;

    index.parts.resize(local_parts);
    for (size_t p = 0; p < local_parts; ++p) {
        size_t begin = p * local_base_number / local_parts;
        size_t end = (p + 1) * local_base_number / local_parts;
        std::vector<uint32_t> ids = mpi_make_range_ids(begin, end);
        MpiHnswRouterPart part;
        part.global_part_id = static_cast<size_t>(rank) * parts_per_rank + p;
        part.begin = begin;
        part.end = end;
        part.graph = build_hnsw_ann_index_from_ids(local_base, dim, ids, M, ef_construction, ef_search);
        index.parts[p] = part;
    }

    size_t total_parts = all_part_owners.size();
    if (total_parts > 0 && !all_centroids.empty()) {
        std::vector<uint32_t> router_ids;
        router_ids.reserve(total_parts);
        for (size_t i = 0; i < total_parts; ++i) router_ids.push_back(static_cast<uint32_t>(i));
        index.router_graph = build_hnsw_ann_index_from_ids(
            const_cast<float*>(all_centroids.data()),
            dim,
            router_ids,
            M,
            ef_construction,
            std::max(router_probe, ef_search)
        );
    }
    return index;
}

static inline std::priority_queue<std::pair<float, uint32_t> > mpi_hnsw_router_search(
    const MpiHnswRouterIndex& index,
    const float* query,
    size_t k,
    int rank
) {
    std::priority_queue<std::pair<float, uint32_t> > result;
    if (!index.router_graph.alg || index.parts.empty()) return result;

    size_t total_parts = index.all_part_owners.size();
    size_t probe = std::min(index.router_probe, total_parts);
    std::priority_queue<std::pair<float, uint32_t> > selected = hnsw_search(index.router_graph, query, probe);

    while (!selected.empty()) {
        uint32_t gid = selected.top().second;
        selected.pop();
        if (static_cast<size_t>(gid) >= total_parts) continue;
        if (index.all_part_owners[gid] != rank) continue;
        int local_id = index.all_part_local_ids[gid];
        if (local_id < 0 || static_cast<size_t>(local_id) >= index.parts.size()) continue;
        const MpiHnswRouterPart& part = index.parts[static_cast<size_t>(local_id)];
        std::priority_queue<std::pair<float, uint32_t> > part_res = hnsw_search(
            part.graph,
            query,
            std::min(k, part.end > part.begin ? part.end - part.begin : static_cast<size_t>(0))
        );
        ann_mpi_merge_topk(result, part_res, k);
    }
    return result;
}

static inline std::priority_queue<std::pair<float, uint32_t> > mpi_hnsw_router_search_openmp(
    const MpiHnswRouterIndex& index,
    const float* query,
    size_t k,
    int rank,
    size_t threads
) {
#ifndef _OPENMP
    (void)threads;
    return mpi_hnsw_router_search(index, query, k, rank);
#else
    std::priority_queue<std::pair<float, uint32_t> > result;
    if (!index.router_graph.alg || index.parts.empty()) return result;
    size_t total_parts = index.all_part_owners.size();
    size_t probe = std::min(index.router_probe, total_parts);
    std::priority_queue<std::pair<float, uint32_t> > selected = hnsw_search(index.router_graph, query, probe);

    std::vector<int> local_part_ids;
    while (!selected.empty()) {
        uint32_t gid = selected.top().second;
        selected.pop();
        if (static_cast<size_t>(gid) >= total_parts) continue;
        if (index.all_part_owners[gid] != rank) continue;
        int local_id = index.all_part_local_ids[gid];
        if (local_id >= 0 && static_cast<size_t>(local_id) < index.parts.size()) {
            local_part_ids.push_back(local_id);
        }
    }

    int nt = static_cast<int>(std::max<size_t>(1, threads));
    #pragma omp parallel num_threads(nt)
    {
        std::priority_queue<std::pair<float, uint32_t> > local_result;
        #pragma omp for schedule(dynamic, 1)
        for (long long i = 0; i < static_cast<long long>(local_part_ids.size()); ++i) {
            const MpiHnswRouterPart& part = index.parts[static_cast<size_t>(local_part_ids[static_cast<size_t>(i)])];
            std::priority_queue<std::pair<float, uint32_t> > part_res = hnsw_search(
                part.graph,
                query,
                std::min(k, part.end > part.begin ? part.end - part.begin : static_cast<size_t>(0))
            );
            ann_mpi_merge_topk(local_result, part_res, k);
        }
        #pragma omp critical
        {
            ann_mpi_merge_topk(result, local_result, k);
        }
    }
    return result;
#endif
}
