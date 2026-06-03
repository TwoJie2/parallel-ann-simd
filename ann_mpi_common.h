#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <queue>
#include <utility>
#include <vector>

struct AnnMpiShard {
    size_t begin;
    size_t count;
};

struct AnnMpiCandidate {
    float distance;
    uint32_t id;
};

static inline AnnMpiShard ann_mpi_compute_shard(size_t n, int rank, int size)
{
    AnnMpiShard shard;
    shard.begin = 0;
    shard.count = 0;

    if (size <= 0 || rank < 0 || rank >= size) {
        return shard;
    }

    size_t workers = static_cast<size_t>(size);
    size_t r = static_cast<size_t>(rank);
    size_t base = n / workers;
    size_t rem = n % workers;

    shard.count = base + (r < rem ? 1 : 0);
    shard.begin = r * base + std::min(r, rem);
    return shard;
}

static inline bool ann_mpi_is_better_candidate(
    float lhs_distance,
    uint32_t lhs_id,
    float rhs_distance,
    uint32_t rhs_id
) {
    if (lhs_distance != rhs_distance) return lhs_distance < rhs_distance;
    return lhs_id < rhs_id;
}

static inline void ann_mpi_topk_push(
    std::priority_queue<std::pair<float, uint32_t> >& q,
    float distance,
    uint32_t id,
    size_t k
) {
    if (k == 0) return;

    if (q.size() < k) {
        q.push(std::make_pair(distance, id));
        return;
    }

    const std::pair<float, uint32_t>& worst = q.top();
    if (ann_mpi_is_better_candidate(distance, id, worst.first, worst.second)) {
        q.pop();
        q.push(std::make_pair(distance, id));
    }
}

static inline void ann_mpi_merge_topk(
    std::priority_queue<std::pair<float, uint32_t> >& dst,
    std::priority_queue<std::pair<float, uint32_t> > src,
    size_t k
) {
    while (!src.empty()) {
        ann_mpi_topk_push(dst, src.top().first, src.top().second, k);
        src.pop();
    }
}

static inline std::vector<AnnMpiCandidate> ann_mpi_queue_to_candidates(
    std::priority_queue<std::pair<float, uint32_t> > q,
    size_t k
) {
    std::vector<AnnMpiCandidate> out;
    out.reserve(q.size());

    while (!q.empty()) {
        AnnMpiCandidate c;
        c.distance = q.top().first;
        c.id = q.top().second;
        out.push_back(c);
        q.pop();
    }

    std::sort(
        out.begin(),
        out.end(),
        [](const AnnMpiCandidate& a, const AnnMpiCandidate& b) {
            if (a.distance != b.distance) return a.distance < b.distance;
            return a.id < b.id;
        }
    );

    if (out.size() > k) out.resize(k);
    return out;
}

static inline std::priority_queue<std::pair<float, uint32_t> > ann_mpi_candidates_to_queue(
    const std::vector<AnnMpiCandidate>& xs,
    size_t k
) {
    std::priority_queue<std::pair<float, uint32_t> > q;
    for (size_t i = 0; i < xs.size(); ++i) {
        ann_mpi_topk_push(q, xs[i].distance, xs[i].id, k);
    }
    return q;
}

static inline std::vector<uint32_t> ann_mpi_extract_sorted_ids(
    std::priority_queue<std::pair<float, uint32_t> > q
) {
    std::vector<AnnMpiCandidate> candidates = ann_mpi_queue_to_candidates(q, q.size());
    std::vector<uint32_t> ids;
    ids.reserve(candidates.size());
    for (size_t i = 0; i < candidates.size(); ++i) {
        ids.push_back(candidates[i].id);
    }
    return ids;
}

static inline void ann_mpi_offset_candidate_ids(
    std::vector<AnnMpiCandidate>& candidates,
    uint32_t offset
) {
    for (size_t i = 0; i < candidates.size(); ++i) {
        candidates[i].id += offset;
    }
}
