#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>

#include "ann_ivf.h"
#include "ann_pq_fastscan.h"
#include "ann_mt_common.h"

// IVF-PQ baseline used in Phase 5:
//   1) use IVF centroids to choose nprobe inverted lists;
//   2) use the global 4-bit PQ/FastScan codes to rank only the vectors in those lists;
//   3) keep top-p coarse candidates;
//   4) rerank the candidates with original float vectors and SIMD inner_product_opt.
// This corresponds to the first IVF-PQ construction strategy in the guide:
//   PQ all base data first, then combine PQ codes with an IVF coarse index.

typedef std::pair<uint16_t, uint32_t> IVFPQCoarseItem;

static inline uint16_t ivfpq_score_one_id(
    const PQFastScanIndex& pq_index,
    const std::vector<uint8_t>& lut_u8,
    uint32_t id
) {
    size_t sid = static_cast<size_t>(id);
    size_t block = sid / pq_index.block_size;
    size_t lane = sid % pq_index.block_size;

    uint16_t score = 0;
    for (size_t m = 0; m < pq_index.M; ++m) {
        uint8_t code = pq_index.block_codes[(block * pq_index.M + m) * pq_index.block_size + lane];
        score += static_cast<uint16_t>(lut_u8[m * pq_index.Ks + code]);
    }
    return score;
}

static inline void ivfpq_collect_candidate_ids(
    const IVFIndex& ivf_index,
    const float* query,
    size_t nprobe,
    std::vector<uint32_t>& candidate_ids
) {
    candidate_ids.clear();
    if (ivf_index.nlist == 0) return;

    std::vector<uint32_t> probe_ids;
    ivf_select_probe_lists(ivf_index, query, nprobe, probe_ids);

    size_t total = 0;
    for (size_t i = 0; i < probe_ids.size(); ++i) {
        total += ivf_index.lists[probe_ids[i]].size();
    }
    candidate_ids.reserve(total);

    for (size_t i = 0; i < probe_ids.size(); ++i) {
        const std::vector<uint32_t>& list = ivf_index.lists[probe_ids[i]];
        candidate_ids.insert(candidate_ids.end(), list.begin(), list.end());
    }
}

static inline void ivfpq_select_top_p(std::vector<IVFPQCoarseItem>& items, size_t p)
{
    if (p < items.size()) {
        std::nth_element(
            items.begin(),
            items.begin() + static_cast<std::ptrdiff_t>(p),
            items.end(),
            [](const IVFPQCoarseItem& a, const IVFPQCoarseItem& b) {
                if (a.first != b.first) return a.first > b.first;
                return a.second < b.second;
            }
        );
        items.resize(p);
    }
}

static inline std::priority_queue<std::pair<float, uint32_t> > ivfpq_rerank_serial(
    float* base,
    const float* query,
    const PQFastScanIndex& pq_index,
    const std::vector<IVFPQCoarseItem>& coarse_items,
    size_t k
) {
    std::priority_queue<std::pair<float, uint32_t> > result;

    for (size_t i = 0; i < coarse_items.size(); ++i) {
        uint32_t id = coarse_items[i].second;
        const float* base_vec = base + static_cast<size_t>(id) * pq_index.vecdim;
        float ip = inner_product_opt(base_vec, query, pq_index.vecdim);
        ann_topk_push(result, 1.0f - ip, id, k);
    }

    return result;
}

static inline std::priority_queue<std::pair<float, uint32_t> > ivfpq_search_rerank(
    float* base,
    float* query,
    const PQFastScanIndex& pq_index,
    const IVFIndex& ivf_index,
    size_t k,
    size_t nprobe,
    size_t p
) {
    std::priority_queue<std::pair<float, uint32_t> > empty;
    if (ivf_index.nlist == 0 || pq_index.base_number == 0) return empty;

    std::vector<uint32_t> candidate_ids;
    ivfpq_collect_candidate_ids(ivf_index, query, nprobe, candidate_ids);
    if (candidate_ids.empty()) return empty;

    if (p < k) p = k;
    if (p > candidate_ids.size()) p = candidate_ids.size();

    std::vector<float> lut_float;
    std::vector<uint8_t> lut_u8;
    pqfs_build_lut_float(query, pq_index, lut_float);
    pqfs_quantize_lut_u8(lut_float, pq_index, lut_u8);

    std::vector<IVFPQCoarseItem> coarse_items;
    coarse_items.reserve(candidate_ids.size());
    for (size_t i = 0; i < candidate_ids.size(); ++i) {
        uint32_t id = candidate_ids[i];
        uint16_t score = ivfpq_score_one_id(pq_index, lut_u8, id);
        coarse_items.push_back(IVFPQCoarseItem(score, id));
    }

    ivfpq_select_top_p(coarse_items, p);
    return ivfpq_rerank_serial(base, query, pq_index, coarse_items, k);
}
