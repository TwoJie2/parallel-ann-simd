#pragma once

#include <algorithm>
#include <cstdint>
#include <iostream>
#include <memory>
#include <queue>
#include <sstream>
#include <string>
#include <utility>

#include "ann_mt_common.h"
#include "hnswlib/hnswlib/hnswlib.h"

struct HNSWAnnIndex {
    std::shared_ptr<hnswlib::InnerProductSpace> space;
    std::shared_ptr<hnswlib::HierarchicalNSW<float> > alg;
    size_t dim;
    size_t base_number;
    size_t M;
    size_t ef_construction;
    size_t ef_search;
    bool loaded_from_file;

    HNSWAnnIndex()
        : dim(0),
          base_number(0),
          M(0),
          ef_construction(0),
          ef_search(0),
          loaded_from_file(false) {}
};

static inline std::string hnsw_index_path(
    size_t base_number,
    size_t dim,
    size_t M,
    size_t ef_construction
) {
    std::ostringstream oss;
    oss << "files/indexes/hnsw_ip_base" << base_number
        << "_dim" << dim
        << "_M" << M
        << "_efc" << ef_construction
        << ".bin";
    return oss.str();
}

static inline HNSWAnnIndex build_hnsw_ann_index(
    float* base,
    size_t base_number,
    size_t dim,
    size_t M,
    size_t ef_construction,
    size_t ef_search,
    bool rebuild
) {
    ann_prepare_log_dirs();

    HNSWAnnIndex index;
    index.dim = dim;
    index.base_number = base_number;
    index.M = M;
    index.ef_construction = ef_construction;
    index.ef_search = ef_search;
    index.loaded_from_file = false;
    index.space.reset(new hnswlib::InnerProductSpace(dim));

    const std::string path = hnsw_index_path(base_number, dim, M, ef_construction);

    if (!rebuild && ann_path_exists(path)) {
        std::cerr << "[HNSW] load index " << path << "\n";
        index.alg.reset(new hnswlib::HierarchicalNSW<float>(index.space.get(), path, false, base_number));
        index.alg->setEf(ef_search);
        index.loaded_from_file = true;
        return index;
    }

    std::cerr << "[HNSW] build index: base=" << base_number
              << " dim=" << dim
              << " M=" << M
              << " efConstruction=" << ef_construction
              << " efSearch=" << ef_search << "\n";

    index.alg.reset(new hnswlib::HierarchicalNSW<float>(
        index.space.get(),
        base_number,
        M,
        ef_construction
    ));

    if (base_number > 0) {
        index.alg->addPoint(base, static_cast<hnswlib::labeltype>(0));
    }

#ifdef _OPENMP
    #pragma omp parallel for schedule(dynamic, 64)
#endif
    for (long long i = 1; i < static_cast<long long>(base_number); ++i) {
        index.alg->addPoint(
            base + static_cast<size_t>(i) * dim,
            static_cast<hnswlib::labeltype>(i)
        );
    }

    index.alg->setEf(ef_search);

    std::cerr << "[HNSW] save index " << path << "\n";
    index.alg->saveIndex(path);

    return index;
}

static inline std::priority_queue<std::pair<float, uint32_t> > hnsw_search(
    const HNSWAnnIndex& index,
    const float* query,
    size_t k
) {
    std::priority_queue<std::pair<float, uint32_t> > out;
    if (!index.alg || index.base_number == 0) return out;

    std::priority_queue<std::pair<float, hnswlib::labeltype> > res =
        index.alg->searchKnn(query, k);

    while (!res.empty()) {
        const std::pair<float, hnswlib::labeltype> item = res.top();
        res.pop();
        out.push(std::make_pair(item.first, static_cast<uint32_t>(item.second)));
    }

    return out;
}
