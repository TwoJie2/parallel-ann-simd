#include <vector>
#include <cstring>
#include <string>
#include <iostream>
#include <fstream>
#include <set>
#include <chrono>
#include <iomanip>
#include <sstream>
#include <sys/time.h>
#include <cmath>
#include <cstdlib>
#include <random>
#include <algorithm>
#include <limits>
#include <map>
#include <pthread.h>
#ifdef ANN_ENABLE_MPI
#include <mpi.h>
#endif
#ifdef _OPENMP
#include <omp.h>
#endif
#include "hnswlib/hnswlib/hnswlib.h"
#include "flat_scan.h"
// 可以自行添加需要的头文件
#include "ann_opt.h"
// #include "ann_sq.h"
#include "ann_pq_fastscan.h"
#include "ann_mt_common.h"
#include "ann_flat_mt.h"
#include "ann_pq_fastscan_mt.h"
#include "ann_ivf.h"
#include "ann_ivf_mt.h"
#include "ann_ivfpq.h"
#include "ann_ivfpq_mt.h"
#include "ann_hnsw.h"
#include "ann_mpi_common.h"
#include "ann_mpi_graph.h"

using namespace hnswlib;

template<typename T>
T *LoadData(std::string data_path, size_t& n, size_t& d)
{
    std::ifstream fin;
    fin.open(data_path, std::ios::in | std::ios::binary);
    if (!fin) {
        std::cerr << "cannot open data file " << data_path << "\n";
        n = 0;
        d = 0;
        return NULL;
    }
    fin.read((char*)&n,4);
    fin.read((char*)&d,4);
    T* data = new T[n*d];
    int sz = sizeof(T);
    for(int i = 0; i < n; ++i){
        fin.read(((char*)data + i*d*sz), d*sz);
    }
    fin.close();

    std::cerr<<"load data "<<data_path<<"\n";
    std::cerr<<"dimension: "<<d<<"  number:"<<n<<"  size_per_element:"<<sizeof(T)<<"\n";

    return data;
}

template<typename T>
bool LoadDataInfo(std::string data_path, size_t& n, size_t& d)
{
    std::ifstream fin;
    fin.open(data_path, std::ios::in | std::ios::binary);
    if (!fin) {
        std::cerr << "cannot open data file " << data_path << "\n";
        n = 0;
        d = 0;
        return false;
    }

    fin.read((char*)&n, 4);
    fin.read((char*)&d, 4);
    fin.close();
    return true;
}

template<typename T>
T *LoadDataRange(std::string data_path, size_t begin, size_t count, size_t& n, size_t& d)
{
    std::ifstream fin;
    fin.open(data_path, std::ios::in | std::ios::binary);
    if (!fin) {
        std::cerr << "cannot open data file " << data_path << "\n";
        n = 0;
        d = 0;
        return NULL;
    }

    fin.read((char*)&n, 4);
    fin.read((char*)&d, 4);
    if (begin > n) begin = n;
    if (count > n - begin) count = n - begin;

    T* data = new T[count * d];
    int sz = sizeof(T);
    std::streamoff offset = static_cast<std::streamoff>(8 + begin * d * static_cast<size_t>(sz));
    fin.seekg(offset, std::ios::beg);
    for (size_t i = 0; i < count; ++i) {
        fin.read(((char*)data + i * d * sz), d * sz);
    }
    fin.close();

    std::cerr << "load data shard " << data_path
              << " begin:" << begin
              << " count:" << count
              << " global_number:" << n
              << " dimension:" << d
              << " size_per_element:" << sizeof(T) << "\n";

    return data;
}

struct SearchResult
{
    float recall;
    int64_t latency; // 单位us
};


static inline std::string trim_copy(const std::string& s)
{
    size_t b = 0;
    while (b < s.size() && (s[b] == ' ' || s[b] == '\t' || s[b] == '\r' || s[b] == '\n')) ++b;
    size_t e = s.size();
    while (e > b && (s[e - 1] == ' ' || s[e - 1] == '\t' || s[e - 1] == '\r' || s[e - 1] == '\n')) --e;
    return s.substr(b, e - b);
}

static inline std::map<std::string, std::string> load_run_config(const std::string& path)
{
    std::map<std::string, std::string> cfg;
    std::ifstream fin(path.c_str());
    if (!fin) return cfg;

    std::string line;
    while (std::getline(fin, line)) {
        line = trim_copy(line);
        if (line.empty() || line[0] == '#') continue;
        size_t pos = line.find('=');
        if (pos == std::string::npos) continue;
        std::string key = trim_copy(line.substr(0, pos));
        std::string val = trim_copy(line.substr(pos + 1));
        if (!key.empty()) cfg[key] = val;
    }
    return cfg;
}

static inline std::string cfg_string(
    const std::map<std::string, std::string>& cfg,
    const std::string& key,
    const std::string& env_name,
    const std::string& default_value
) {
    std::map<std::string, std::string>::const_iterator it = cfg.find(key);
    if (it != cfg.end() && !it->second.empty()) return it->second;
    return ann_env_string(env_name.c_str(), default_value);
}

static inline size_t cfg_size(
    const std::map<std::string, std::string>& cfg,
    const std::string& key,
    const std::string& env_name,
    size_t default_value,
    size_t lo,
    size_t hi
) {
    std::map<std::string, std::string>::const_iterator it = cfg.find(key);
    if (it != cfg.end() && !it->second.empty()) {
        char* end = NULL;
        unsigned long x = std::strtoul(it->second.c_str(), &end, 10);
        if (end != it->second.c_str()) {
            if (x < lo) x = lo;
            if (x > hi) x = hi;
            return static_cast<size_t>(x);
        }
    }
    return ann_env_size(env_name.c_str(), default_value, lo, hi);
}

static inline bool cfg_flag(
    const std::map<std::string, std::string>& cfg,
    const std::string& key,
    const std::string& env_name,
    bool default_value
) {
    std::map<std::string, std::string>::const_iterator it = cfg.find(key);
    if (it != cfg.end() && !it->second.empty()) {
        std::string v = it->second;
        std::transform(v.begin(), v.end(), v.begin(), ::tolower);
        return v == "1" || v == "true" || v == "yes" || v == "on";
    }
    return ann_env_flag(env_name.c_str(), default_value);
}

void build_index(float* base, size_t base_number, size_t vecdim)
{
    const int efConstruction = 150; // 为防止索引构建时间过长，efc建议设置200以下
    const int M = 16; // M建议设置为16以下

    HierarchicalNSW<float> *appr_alg;
    InnerProductSpace ipspace(vecdim);
    appr_alg = new HierarchicalNSW<float>(&ipspace, base_number, M, efConstruction);

    appr_alg->addPoint(base, 0);
    #pragma omp parallel for
    for(int i = 1; i < base_number; ++i) {
        appr_alg->addPoint(base + 1ll*vecdim*i, i);
    }

    char path_index[1024] = "files/hnsw.index";
    appr_alg->saveIndex(path_index);
}

static inline std::priority_queue<std::pair<float, uint32_t> > run_one_search(
    const std::string& algorithm,
    float* base,
    float* query,
    size_t base_number,
    size_t vecdim,
    size_t k,
    const PQFastScanIndex& pqfs_index,
    size_t pqfs_p,
    const IVFIndex& ivf_index,
    size_t ivf_nprobe,
    const HNSWAnnIndex& hnsw_index,
    size_t threads
) {
    if (algorithm == "flat" || algorithm == "flat_simd") {
        return flat_search_opt(base, query, base_number, vecdim, k);
    }
    if (algorithm == "flat_omp" || algorithm == "flat_openmp") {
        return flat_search_opt_openmp(base, query, base_number, vecdim, k, threads);
    }
    if (algorithm == "flat_pthread") {
        return flat_search_opt_pthread(base, query, base_number, vecdim, k, threads);
    }
    if (algorithm == "pqfs_omp" || algorithm == "pqfs_openmp") {
        return pq_fastscan_search_rerank_openmp(base, query, pqfs_index, k, pqfs_p, threads);
    }
    if (algorithm == "pqfs_pthread") {
        return pq_fastscan_search_rerank_pthread(base, query, pqfs_index, k, pqfs_p, threads);
    }
    if (algorithm == "ivfpq") {
        return ivfpq_search_rerank(base, query, pqfs_index, ivf_index, k, ivf_nprobe, pqfs_p);
    }
    if (algorithm == "ivfpq_omp" || algorithm == "ivfpq_openmp") {
        return ivfpq_search_rerank_openmp(base, query, pqfs_index, ivf_index, k, ivf_nprobe, pqfs_p, threads);
    }
    if (algorithm == "ivfpq_pthread") {
        return ivfpq_search_rerank_pthread(base, query, pqfs_index, ivf_index, k, ivf_nprobe, pqfs_p, threads);
    }
    if (algorithm == "ivf") {
        return ivf_search(base, query, ivf_index, k, ivf_nprobe);
    }
    if (algorithm == "ivf_omp" || algorithm == "ivf_openmp") {
        return ivf_search_openmp(base, query, ivf_index, k, ivf_nprobe, threads);
    }
    if (algorithm == "ivf_pthread") {
        return ivf_search_pthread(base, query, ivf_index, k, ivf_nprobe, threads);
    }
    if (algorithm == "hnsw") {
        return hnsw_search(hnsw_index, query, k);
    }

    // Safe fallback: keep the exact SIMD-stage algorithm as the default baseline.
    return pq_fastscan_search_rerank(base, query, pqfs_index, k, pqfs_p);
}

static inline float compute_recall_and_consume(
    std::priority_queue<std::pair<float, uint32_t> > res,
    int* test_gt,
    size_t query_id,
    size_t test_gt_d,
    size_t k
) {
    std::set<uint32_t> gtset;
    for(size_t j = 0; j < k; ++j){
        int t = test_gt[j + query_id * test_gt_d];
        gtset.insert(static_cast<uint32_t>(t));
    }

    size_t acc = 0;
    while (res.size()) {
        uint32_t x = res.top().second;
        if(gtset.find(x) != gtset.end()){
            ++acc;
        }
        res.pop();
    }
    return static_cast<float>(acc) / static_cast<float>(k);
}


static inline bool is_query_batch_algorithm(const std::string& algorithm)
{
    return algorithm == "pqfs_batch_omp" ||
           algorithm == "pqfs_query_omp" ||
           algorithm == "pqfs_batch_pthread" ||
           algorithm == "pqfs_query_pthread" ||
           algorithm == "ivfpq_batch_omp" ||
           algorithm == "ivfpq_query_omp" ||
           algorithm == "ivfpq_batch_pthread" ||
           algorithm == "ivfpq_query_pthread" ||
           algorithm == "flat_batch_omp" ||
           algorithm == "flat_query_omp" ||
           algorithm == "flat_batch_pthread" ||
           algorithm == "flat_query_pthread" ||
           algorithm == "ivf_batch_omp" ||
           algorithm == "ivf_query_omp" ||
           algorithm == "ivf_batch_pthread" ||
           algorithm == "ivf_query_pthread" ||
           algorithm == "hnsw_batch_omp" ||
           algorithm == "hnsw_query_omp" ||
           algorithm == "hnsw_batch_pthread" ||
           algorithm == "hnsw_query_pthread";
}

static inline std::string batch_inner_algorithm(const std::string& algorithm)
{
    if (algorithm.find("hnsw") == 0) {
        return "hnsw";
    }
    if (algorithm.find("flat") == 0) {
        return "flat";
    }
    if (algorithm.find("ivfpq") == 0) {
        return "ivfpq";
    }
    if (algorithm.find("ivf") == 0) {
        return "ivf";
    }
    return "pqfs";
}

static inline bool batch_uses_openmp(const std::string& algorithm)
{
    return algorithm.find("_omp") != std::string::npos ||
           algorithm.find("_openmp") != std::string::npos;
}

static inline bool batch_uses_pthread(const std::string& algorithm)
{
    return algorithm.find("_pthread") != std::string::npos;
}

static inline void run_query_batch_openmp(
    const std::string& inner_algorithm,
    float* base,
    float* test_query,
    int* test_gt,
    size_t test_number,
    size_t test_gt_d,
    size_t base_number,
    size_t vecdim,
    size_t k,
    const PQFastScanIndex& pqfs_index,
    size_t pqfs_p,
    const IVFIndex& ivf_index,
    size_t ivf_nprobe,
    const HNSWAnnIndex& hnsw_index,
    size_t threads,
    std::vector<SearchResult>& results
) {
#ifndef _OPENMP
    (void)threads;
    for (size_t i = 0; i < test_number; ++i) {
        auto res = run_one_search(
            inner_algorithm,
            base,
            test_query + i * vecdim,
            base_number,
            vecdim,
            k,
            pqfs_index,
            pqfs_p,
            ivf_index,
            ivf_nprobe,
            hnsw_index,
            1
        );
        float recall = compute_recall_and_consume(res, test_gt, i, test_gt_d, k);
        results[i] = {recall, 0};
    }
#else
    int nt = static_cast<int>(std::max<size_t>(1, threads));
    #pragma omp parallel for schedule(dynamic, 8) num_threads(nt)
    for (long long qi = 0; qi < static_cast<long long>(test_number); ++qi) {
        size_t i = static_cast<size_t>(qi);
        auto res = run_one_search(
            inner_algorithm,
            base,
            test_query + i * vecdim,
            base_number,
            vecdim,
            k,
            pqfs_index,
            pqfs_p,
            ivf_index,
            ivf_nprobe,
            hnsw_index,
            1
        );
        float recall = compute_recall_and_consume(res, test_gt, i, test_gt_d, k);
        results[i] = {recall, 0};
    }
#endif
}

struct QueryBatchPthreadArg {
    std::string inner_algorithm;
    float* base;
    float* test_query;
    int* test_gt;
    size_t begin;
    size_t end;
    size_t test_gt_d;
    size_t base_number;
    size_t vecdim;
    size_t k;
    const PQFastScanIndex* pqfs_index;
    size_t pqfs_p;
    const IVFIndex* ivf_index;
    size_t ivf_nprobe;
    const HNSWAnnIndex* hnsw_index;
    std::vector<SearchResult>* results;
};

static inline void* query_batch_pthread_worker(void* ptr)
{
    QueryBatchPthreadArg* arg = static_cast<QueryBatchPthreadArg*>(ptr);
    for (size_t i = arg->begin; i < arg->end; ++i) {
        auto res = run_one_search(
            arg->inner_algorithm,
            arg->base,
            arg->test_query + i * arg->vecdim,
            arg->base_number,
            arg->vecdim,
            arg->k,
            *arg->pqfs_index,
            arg->pqfs_p,
            *arg->ivf_index,
            arg->ivf_nprobe,
            *arg->hnsw_index,
            1
        );
        float recall = compute_recall_and_consume(res, arg->test_gt, i, arg->test_gt_d, arg->k);
        (*(arg->results))[i] = {recall, 0};
    }
    return NULL;
}

static inline void run_query_batch_pthread(
    const std::string& inner_algorithm,
    float* base,
    float* test_query,
    int* test_gt,
    size_t test_number,
    size_t test_gt_d,
    size_t base_number,
    size_t vecdim,
    size_t k,
    const PQFastScanIndex& pqfs_index,
    size_t pqfs_p,
    const IVFIndex& ivf_index,
    size_t ivf_nprobe,
    const HNSWAnnIndex& hnsw_index,
    size_t threads,
    std::vector<SearchResult>& results
) {
    threads = std::max<size_t>(1, std::min<size_t>(threads, test_number));
    std::vector<pthread_t> handles(threads);
    std::vector<QueryBatchPthreadArg> args(threads);
    size_t chunk = (test_number + threads - 1) / threads;

    for (size_t t = 0; t < threads; ++t) {
        args[t].inner_algorithm = inner_algorithm;
        args[t].base = base;
        args[t].test_query = test_query;
        args[t].test_gt = test_gt;
        args[t].begin = std::min(t * chunk, test_number);
        args[t].end = std::min((t + 1) * chunk, test_number);
        args[t].test_gt_d = test_gt_d;
        args[t].base_number = base_number;
        args[t].vecdim = vecdim;
        args[t].k = k;
        args[t].pqfs_index = &pqfs_index;
        args[t].pqfs_p = pqfs_p;
        args[t].ivf_index = &ivf_index;
        args[t].ivf_nprobe = ivf_nprobe;
        args[t].hnsw_index = &hnsw_index;
        args[t].results = &results;
        pthread_create(&handles[t], NULL, query_batch_pthread_worker, &args[t]);
    }

    for (size_t t = 0; t < threads; ++t) {
        pthread_join(handles[t], NULL);
    }
}

static void generate_local_data(
    std::vector<float>& base_holder,
    std::vector<float>& query_holder,
    std::vector<int>& gt_holder,
    size_t& base_number,
    size_t& test_number,
    size_t& vecdim,
    size_t& test_gt_d
) {
    base_number = ann_env_size("ANN_LOCAL_BASE", 10000, 100, 200000);
    test_number = ann_env_size("ANN_LOCAL_QUERY", 50, 1, 5000);
    vecdim = 96;
    test_gt_d = std::min<size_t>(100, base_number);

    base_holder.assign(base_number * vecdim, 0.0f);
    query_holder.assign(test_number * vecdim, 0.0f);
    gt_holder.assign(test_number * test_gt_d, 0);

    std::mt19937 rng(20260524u);
    std::normal_distribution<float> dist(0.0f, 1.0f);

    for (size_t i = 0; i < base_number; ++i) {
        double norm = 0.0;
        for (size_t d = 0; d < vecdim; ++d) {
            float v = dist(rng);
            base_holder[i * vecdim + d] = v;
            norm += static_cast<double>(v) * static_cast<double>(v);
        }
        norm = std::sqrt(norm) + 1e-12;
        for (size_t d = 0; d < vecdim; ++d) {
            base_holder[i * vecdim + d] = static_cast<float>(base_holder[i * vecdim + d] / norm);
        }
    }

    for (size_t i = 0; i < test_number; ++i) {
        double norm = 0.0;
        for (size_t d = 0; d < vecdim; ++d) {
            float v = dist(rng);
            query_holder[i * vecdim + d] = v;
            norm += static_cast<double>(v) * static_cast<double>(v);
        }
        norm = std::sqrt(norm) + 1e-12;
        for (size_t d = 0; d < vecdim; ++d) {
            query_holder[i * vecdim + d] = static_cast<float>(query_holder[i * vecdim + d] / norm);
        }
    }

    typedef std::pair<float, uint32_t> Item;
    std::vector<Item> all(base_number);
    for (size_t qi = 0; qi < test_number; ++qi) {
        const float* query = query_holder.data() + qi * vecdim;
        for (size_t i = 0; i < base_number; ++i) {
            float ip = inner_product_opt(base_holder.data() + i * vecdim, query, vecdim);
            all[i] = Item(1.0f - ip, static_cast<uint32_t>(i));
        }
        std::nth_element(
            all.begin(),
            all.begin() + static_cast<std::ptrdiff_t>(test_gt_d - 1),
            all.end(),
            [](const Item& a, const Item& b) {
                if (a.first != b.first) return a.first < b.first;
                return a.second < b.second;
            }
        );
        std::sort(
            all.begin(),
            all.begin() + static_cast<std::ptrdiff_t>(test_gt_d),
            [](const Item& a, const Item& b) {
                if (a.first != b.first) return a.first < b.first;
                return a.second < b.second;
            }
        );
        for (size_t j = 0; j < test_gt_d; ++j) {
            gt_holder[qi * test_gt_d + j] = static_cast<int>(all[j].second);
        }
    }

    std::cerr << "local synthetic data generated\n";
    std::cerr << "dimension: " << vecdim << "  base:" << base_number << "  query:" << test_number << "\n";
}

#ifdef ANN_ENABLE_MPI
static inline bool is_mpi_ann_algorithm(const std::string& algorithm)
{
    return algorithm == "mpi_ivf" ||
           algorithm == "mpi_ivf_omp" ||
           algorithm == "mpi_ivf_openmp" ||
           algorithm == "mpi_ivf_pthread" ||
           algorithm == "mpi_hnsw_shard" ||
           algorithm == "mpi_ivf_hnsw" ||
           algorithm == "mpi_ivf_hnsw_omp" ||
           algorithm == "mpi_ivf_hnsw_openmp" ||
           algorithm == "mpi_hnsw_router" ||
           algorithm == "mpi_hnsw_router_omp" ||
           algorithm == "mpi_hnsw_router_openmp";
}

static inline bool is_mpi_ivf_algorithm(const std::string& algorithm)
{
    return algorithm == "mpi_ivf" ||
           algorithm == "mpi_ivf_omp" ||
           algorithm == "mpi_ivf_openmp" ||
           algorithm == "mpi_ivf_pthread";
}

static inline bool is_mpi_hnsw_shard_algorithm(const std::string& algorithm)
{
    return algorithm == "mpi_hnsw_shard";
}

static inline bool is_mpi_ivf_hnsw_algorithm(const std::string& algorithm)
{
    return algorithm == "mpi_ivf_hnsw" ||
           algorithm == "mpi_ivf_hnsw_omp" ||
           algorithm == "mpi_ivf_hnsw_openmp";
}

static inline bool is_mpi_hnsw_router_algorithm(const std::string& algorithm)
{
    return algorithm == "mpi_hnsw_router" ||
           algorithm == "mpi_hnsw_router_omp" ||
           algorithm == "mpi_hnsw_router_openmp";
}

static inline std::string mpi_ann_backend_name(const std::string& algorithm)
{
    if (algorithm.find("omp") != std::string::npos ||
        algorithm.find("openmp") != std::string::npos) {
        return "mpi_openmp";
    }
    if (algorithm.find("pthread") != std::string::npos) {
        return "mpi_pthread";
    }
    return "mpi";
}

static inline std::priority_queue<std::pair<float, uint32_t> > run_mpi_local_ivf_search(
    const std::string& algorithm,
    float* local_base,
    float* query,
    const IVFIndex& local_ivf,
    size_t k,
    size_t nprobe,
    size_t threads
) {
    if (algorithm == "mpi_ivf_omp" || algorithm == "mpi_ivf_openmp") {
        return ivf_search_openmp(local_base, query, local_ivf, k, nprobe, threads);
    }
    if (algorithm == "mpi_ivf_pthread") {
        return ivf_search_pthread(local_base, query, local_ivf, k, nprobe, threads);
    }
    return ivf_search(local_base, query, local_ivf, k, nprobe);
}

static inline std::priority_queue<std::pair<float, uint32_t> > run_mpi_local_ann_search(
    const std::string& algorithm,
    float* local_base,
    float* query,
    const IVFIndex& local_ivf,
    const MpiHnswShardIndex& hnsw_shard_index,
    const MpiIvfHnswIndex& ivf_hnsw_index,
    const MpiHnswRouterIndex& router_index,
    size_t k,
    size_t nprobe,
    size_t threads,
    int rank
) {
    if (is_mpi_ivf_algorithm(algorithm)) {
        return run_mpi_local_ivf_search(algorithm, local_base, query, local_ivf, k, nprobe, threads);
    }
    if (is_mpi_hnsw_shard_algorithm(algorithm)) {
        return mpi_hnsw_shard_search(hnsw_shard_index, query, k);
    }
    if (algorithm == "mpi_ivf_hnsw_omp" || algorithm == "mpi_ivf_hnsw_openmp") {
        return mpi_ivf_hnsw_search_openmp(local_base, query, ivf_hnsw_index, k, nprobe, threads);
    }
    if (algorithm == "mpi_ivf_hnsw") {
        return mpi_ivf_hnsw_search(local_base, query, ivf_hnsw_index, k, nprobe);
    }
    if (algorithm == "mpi_hnsw_router_omp" || algorithm == "mpi_hnsw_router_openmp") {
        return mpi_hnsw_router_search_openmp(router_index, query, k, rank, threads);
    }
    if (algorithm == "mpi_hnsw_router") {
        return mpi_hnsw_router_search(router_index, query, k, rank);
    }
    std::priority_queue<std::pair<float, uint32_t> > empty;
    return empty;
}

static inline void pack_mpi_candidates(
    const std::vector<AnnMpiCandidate>& candidates,
    size_t k,
    std::vector<float>& sendbuf
) {
    sendbuf.assign(k * 2, std::numeric_limits<float>::infinity());
    for (size_t i = 0; i < candidates.size() && i < k; ++i) {
        sendbuf[i * 2] = candidates[i].distance;
        sendbuf[i * 2 + 1] = static_cast<float>(candidates[i].id);
    }
}

static inline void merge_mpi_candidate_buffer(
    const std::vector<float>& recvbuf,
    int world_size,
    size_t k,
    std::priority_queue<std::pair<float, uint32_t> >& global
) {
    for (int r = 0; r < world_size; ++r) {
        for (size_t j = 0; j < k; ++j) {
            size_t off = (static_cast<size_t>(r) * k + j) * 2;
            float distance = recvbuf[off];
            if (!std::isfinite(distance)) continue;
            uint32_t id = static_cast<uint32_t>(recvbuf[off + 1] + 0.5f);
            ann_mpi_topk_push(global, distance, id, k);
        }
    }
}

static int run_mpi_ann_main(int argc, char *argv[])
{
    MPI_Init(&argc, &argv);

    int world_size = 1;
    int rank = 0;
    MPI_Comm_size(MPI_COMM_WORLD, &world_size);
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);

    const std::string run_id = ann_make_run_id();
    if (rank == 0) {
        ann_prepare_mpi_log_dirs();
        ann_write_mpi_platform_log(run_id);
    }

    const std::map<std::string, std::string> run_cfg = load_run_config("files/configs/run_config.txt");
    const bool local_mode = ann_env_flag("ANN_LOCAL", false);
    const std::string algorithm = cfg_string(run_cfg, "ANN_ALGO", "ANN_ALGO", "mpi_ivf");
    const size_t threads = cfg_size(run_cfg, "ANN_THREADS", "ANN_THREADS", 1, 1, 64);
    const size_t pqfs_p = cfg_size(run_cfg, "ANN_P", "ANN_P", 1500, 10, 1000000);
    const size_t ivf_nlist = cfg_size(run_cfg, "ANN_NLIST", "ANN_NLIST", 128, 1, 4096);
    const size_t ivf_nprobe = cfg_size(run_cfg, "ANN_NPROBE", "ANN_NPROBE", 32, 1, 4096);
    const size_t hnsw_M = cfg_size(run_cfg, "ANN_HNSW_M", "ANN_HNSW_M", 16, 4, 96);
    const size_t hnsw_efc = cfg_size(run_cfg, "ANN_HNSW_EFC", "ANN_HNSW_EFC", 100, 20, 2000);
    const size_t hnsw_ef = cfg_size(run_cfg, "ANN_HNSW_EF", "ANN_HNSW_EF", 80, 10, 2000);
    const size_t graph_parts_per_rank = cfg_size(run_cfg, "ANN_GRAPH_PARTS_PER_RANK", "ANN_GRAPH_PARTS_PER_RANK", 4, 1, 64);
    const size_t graph_router_probe = cfg_size(run_cfg, "ANN_GRAPH_ROUTER_PROBE", "ANN_GRAPH_ROUTER_PROBE", 16, 1, 4096);
    const size_t k = 10;

    if (!is_mpi_ann_algorithm(algorithm)) {
        if (rank == 0) {
            std::cerr << "unsupported MPI ANN_ALGO=" << algorithm
                      << "; use mpi_ivf, mpi_ivf_omp, mpi_ivf_pthread, "
                      << "mpi_hnsw_shard, mpi_ivf_hnsw, mpi_ivf_hnsw_omp, "
                      << "mpi_hnsw_router, or mpi_hnsw_router_omp\n";
        }
        MPI_Finalize();
        return 2;
    }

#ifdef _OPENMP
    omp_set_num_threads(static_cast<int>(threads));
#endif

    size_t test_number = 0, base_number = 0;
    size_t test_gt_d = 0, vecdim = 0;
    size_t local_base_number = 0;
    AnnMpiShard shard = ann_mpi_compute_shard(0, rank, world_size);

    std::vector<float> local_base_holder;
    std::vector<float> local_query_holder;
    std::vector<int> local_gt_holder;

    float* test_query = NULL;
    int* test_gt = NULL;
    float* local_base = NULL;

    if (local_mode) {
        generate_local_data(local_base_holder, local_query_holder, local_gt_holder, base_number, test_number, vecdim, test_gt_d);
        shard = ann_mpi_compute_shard(base_number, rank, world_size);
        local_base_number = shard.count;
        local_base = local_base_holder.data() + shard.begin * vecdim;
        test_query = local_query_holder.data();
        test_gt = local_gt_holder.data();
    } else {
        std::string data_path = "/anndata/";
        test_query = LoadData<float>(data_path + "DEEP100K.query.fbin", test_number, vecdim);
        test_gt = LoadData<int>(data_path + "DEEP100K.gt.query.100k.top100.bin", test_number, test_gt_d);

        size_t base_dim = 0;
        if (!LoadDataInfo<float>(data_path + "DEEP100K.base.100k.fbin", base_number, base_dim)) {
            if (rank == 0) {
                std::cerr << "failed to load base metadata; set ANN_LOCAL=1 for local synthetic debugging\n";
            }
            delete[] test_query;
            delete[] test_gt;
            MPI_Finalize();
            return 1;
        }

        if (test_query == NULL || test_gt == NULL || base_dim != vecdim) {
            if (rank == 0) {
                std::cerr << "failed to load official query/gt data or dimension mismatch; set ANN_LOCAL=1 for local debugging\n";
            }
            delete[] test_query;
            delete[] test_gt;
            MPI_Finalize();
            return 1;
        }

        shard = ann_mpi_compute_shard(base_number, rank, world_size);
        local_base_number = shard.count;
        size_t loaded_base_number = 0, loaded_vecdim = 0;
        local_base = LoadDataRange<float>(
            data_path + "DEEP100K.base.100k.fbin",
            shard.begin,
            shard.count,
            loaded_base_number,
            loaded_vecdim
        );

        if (local_base == NULL || loaded_base_number != base_number || loaded_vecdim != vecdim) {
            if (rank == 0) {
                std::cerr << "failed to load official base shard\n";
            }
            delete[] test_query;
            delete[] test_gt;
            delete[] local_base;
            MPI_Finalize();
            return 1;
        }

        test_number = 2000;
    }

    if (rank == 0) {
        std::cerr << "MPI ANN run: algorithm=" << algorithm
                  << " np=" << world_size
                  << " threads=" << threads
                  << " base=" << base_number
                  << " query=" << test_number
                  << " dim=" << vecdim
                  << " nlist=" << ivf_nlist
                  << " nprobe=" << ivf_nprobe
                  << " M=" << hnsw_M
                  << " efC=" << hnsw_efc
                  << " ef=" << hnsw_ef
                  << " parts_per_rank=" << graph_parts_per_rank
                  << " router_probe=" << graph_router_probe << "\n";
    }

    std::vector<float> all_router_centroids;
    std::vector<int> all_router_owners;
    std::vector<int> all_router_local_ids;
    if (is_mpi_hnsw_router_algorithm(algorithm)) {
        size_t local_parts = std::min(graph_parts_per_rank, local_base_number == 0 ? static_cast<size_t>(0) : local_base_number);
        std::vector<float> local_centroids(local_parts * vecdim, 0.0f);
        for (size_t p = 0; p < local_parts; ++p) {
            size_t begin = p * local_base_number / local_parts;
            size_t end = (p + 1) * local_base_number / local_parts;
            std::vector<float> centroid;
            mpi_compute_centroid_for_range(local_base, vecdim, begin, end, centroid);
            for (size_t d = 0; d < vecdim; ++d) {
                local_centroids[p * vecdim + d] = centroid[d];
            }
        }

        int local_part_count = static_cast<int>(local_parts);
        std::vector<int> part_counts(world_size, 0);
        MPI_Allgather(&local_part_count, 1, MPI_INT, part_counts.data(), 1, MPI_INT, MPI_COMM_WORLD);

        std::vector<int> float_counts(world_size, 0), float_displs(world_size, 0), part_displs(world_size, 0);
        int total_parts_int = 0;
        int total_floats = 0;
        for (int r = 0; r < world_size; ++r) {
            part_displs[r] = total_parts_int;
            float_displs[r] = total_floats;
            total_parts_int += part_counts[r];
            float_counts[r] = part_counts[r] * static_cast<int>(vecdim);
            total_floats += float_counts[r];
        }

        all_router_centroids.assign(static_cast<size_t>(total_floats), 0.0f);
        MPI_Allgatherv(
            local_centroids.empty() ? NULL : local_centroids.data(),
            local_part_count * static_cast<int>(vecdim),
            MPI_FLOAT,
            all_router_centroids.empty() ? NULL : all_router_centroids.data(),
            float_counts.data(),
            float_displs.data(),
            MPI_FLOAT,
            MPI_COMM_WORLD
        );

        std::vector<int> local_owners(local_parts, rank);
        std::vector<int> local_ids(local_parts, 0);
        for (size_t p = 0; p < local_parts; ++p) local_ids[p] = static_cast<int>(p);
        all_router_owners.assign(static_cast<size_t>(total_parts_int), 0);
        all_router_local_ids.assign(static_cast<size_t>(total_parts_int), -1);
        MPI_Allgatherv(
            local_owners.empty() ? NULL : local_owners.data(),
            local_part_count,
            MPI_INT,
            all_router_owners.empty() ? NULL : all_router_owners.data(),
            part_counts.data(),
            part_displs.data(),
            MPI_INT,
            MPI_COMM_WORLD
        );
        MPI_Allgatherv(
            local_ids.empty() ? NULL : local_ids.data(),
            local_part_count,
            MPI_INT,
            all_router_local_ids.empty() ? NULL : all_router_local_ids.data(),
            part_counts.data(),
            part_displs.data(),
            MPI_INT,
            MPI_COMM_WORLD
        );
    }

    int64_t build_begin = ann_now_us();
    IVFIndex local_ivf = IVFIndex();
    MpiHnswShardIndex local_hnsw_shard = MpiHnswShardIndex();
    MpiIvfHnswIndex local_ivf_hnsw = MpiIvfHnswIndex();
    MpiHnswRouterIndex local_router = MpiHnswRouterIndex();

    if (is_mpi_ivf_algorithm(algorithm)) {
        local_ivf = build_ivf_index(
            local_base,
            local_base_number,
            vecdim,
            ivf_nlist,
            local_mode ? std::min<size_t>(2000, local_base_number) : std::min<size_t>(8000, local_base_number),
            local_mode ? 3 : 4
        );
    } else if (is_mpi_hnsw_shard_algorithm(algorithm)) {
        local_hnsw_shard = build_mpi_hnsw_shard_index(
            local_base,
            local_base_number,
            vecdim,
            hnsw_M,
            hnsw_efc,
            hnsw_ef
        );
    } else if (is_mpi_ivf_hnsw_algorithm(algorithm)) {
        local_ivf_hnsw = build_mpi_ivf_hnsw_index(
            local_base,
            local_base_number,
            vecdim,
            ivf_nlist,
            local_mode ? std::min<size_t>(2000, local_base_number) : std::min<size_t>(8000, local_base_number),
            local_mode ? 3 : 4,
            hnsw_M,
            hnsw_efc,
            hnsw_ef
        );
    } else if (is_mpi_hnsw_router_algorithm(algorithm)) {
        local_router = build_mpi_hnsw_router_index(
            local_base,
            local_base_number,
            vecdim,
            graph_parts_per_rank,
            graph_router_probe,
            hnsw_M,
            hnsw_efc,
            hnsw_ef,
            rank,
            all_router_centroids,
            all_router_owners,
            all_router_local_ids
        );
    }

    int64_t build_end = ann_now_us();
    double local_build_ms = static_cast<double>(build_end - build_begin) / 1000.0;
    double max_build_ms = 0.0;
    MPI_Reduce(&local_build_ms, &max_build_ms, 1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);


    std::vector<SearchResult> results;
    if (rank == 0) {
        results.resize(test_number);
    }

    const int gather_count = static_cast<int>(k * 2);
    std::vector<float> sendbuf(k * 2, std::numeric_limits<float>::infinity());
    std::vector<float> recvbuf;
    if (rank == 0) {
        recvbuf.resize(static_cast<size_t>(world_size) * k * 2);
    }

    double comm_merge_total_us = 0.0;
    MPI_Barrier(MPI_COMM_WORLD);

    for (size_t i = 0; i < test_number; ++i) {
        double query_begin = MPI_Wtime();
        std::priority_queue<std::pair<float, uint32_t> > local_res =
            run_mpi_local_ann_search(
                algorithm,
                local_base,
                test_query + i * vecdim,
                local_ivf,
                local_hnsw_shard,
                local_ivf_hnsw,
                local_router,
                k,
                ivf_nprobe,
                threads,
                rank
            );

        std::vector<AnnMpiCandidate> candidates = ann_mpi_queue_to_candidates(local_res, k);
        ann_mpi_offset_candidate_ids(candidates, static_cast<uint32_t>(shard.begin));
        pack_mpi_candidates(candidates, k, sendbuf);

        double gather_begin = MPI_Wtime();
        MPI_Gather(
            sendbuf.data(),
            gather_count,
            MPI_FLOAT,
            rank == 0 ? recvbuf.data() : NULL,
            gather_count,
            MPI_FLOAT,
            0,
            MPI_COMM_WORLD
        );

        if (rank == 0) {
            std::priority_queue<std::pair<float, uint32_t> > global_res;
            merge_mpi_candidate_buffer(recvbuf, world_size, k, global_res);
            double query_end = MPI_Wtime();
            comm_merge_total_us += (query_end - gather_begin) * 1000000.0;
            float recall = compute_recall_and_consume(global_res, test_gt, i, test_gt_d, k);
            results[i] = {recall, static_cast<int64_t>((query_end - query_begin) * 1000000.0)};
        }
    }

    if (rank == 0) {
        double avg_recall = 0.0;
        double avg_latency = 0.0;
        for (size_t i = 0; i < test_number; ++i) {
            avg_recall += results[i].recall;
            avg_latency += results[i].latency;
        }
        avg_recall /= static_cast<double>(test_number);
        avg_latency /= static_cast<double>(test_number);
        double avg_comm_merge = comm_merge_total_us / static_cast<double>(test_number);

        std::cout << "average recall: " << avg_recall << "\n";
        std::cout << "average latency (us): " << avg_latency << "\n";
        std::cout << "average gather+merge (us): " << avg_comm_merge << "\n";

        AnnRunSummary summary;
        summary.run_id = run_id;
        summary.mode = local_mode ? "local" : "official";
        summary.algorithm = algorithm;
        summary.backend = mpi_ann_backend_name(algorithm);
        summary.threads = threads;
        summary.base_n = base_number;
        summary.query_n = test_number;
        summary.k = k;
        if (is_mpi_ivf_algorithm(algorithm)) {
            summary.nlist = local_ivf.nlist;
            summary.nprobe = ivf_nprobe;
            summary.p = pqfs_p;
        } else if (is_mpi_ivf_hnsw_algorithm(algorithm)) {
            summary.nlist = local_ivf_hnsw.ivf.nlist;
            summary.nprobe = ivf_nprobe;
            summary.p = hnsw_ef;
        } else if (is_mpi_hnsw_router_algorithm(algorithm)) {
            summary.nlist = all_router_owners.size();
            summary.nprobe = graph_router_probe;
            summary.p = hnsw_ef;
        } else {
            summary.nlist = 0;
            summary.nprobe = hnsw_ef;
            summary.p = hnsw_efc;
        }
        summary.recall = avg_recall;
        summary.latency_us = avg_latency;
        summary.speedup = 0.0;
        summary.build_ms = max_build_ms;

        std::ostringstream notes;
        notes << algorithm << ": np=" << world_size
              << "; shard_begin_rank0=" << shard.begin
              << "; shard_count_rank0=" << shard.count
              << "; gather_merge_avg_us=" << std::setprecision(8) << avg_comm_merge
              << "; base_sharded=yes";
        if (is_mpi_ivf_algorithm(algorithm)) {
            notes << "; nlist=" << local_ivf.nlist
                  << "; nprobe=" << ivf_nprobe;
        } else if (is_mpi_hnsw_shard_algorithm(algorithm)) {
            notes << "; graph=sharded_hnsw"
                  << "; M=" << hnsw_M
                  << "; efConstruction=" << hnsw_efc
                  << "; efSearch=" << hnsw_ef;
        } else if (is_mpi_ivf_hnsw_algorithm(algorithm)) {
            notes << "; graph=ivf_hnsw"
                  << "; nlist=" << local_ivf_hnsw.ivf.nlist
                  << "; nprobe=" << ivf_nprobe
                  << "; non_empty_lists_rank0=" << local_ivf_hnsw.non_empty_lists
                  << "; M=" << hnsw_M
                  << "; efConstruction=" << hnsw_efc
                  << "; efSearch=" << hnsw_ef;
        } else if (is_mpi_hnsw_router_algorithm(algorithm)) {
            notes << "; graph=hnsw_on_hnsw_router"
                  << "; parts_per_rank=" << graph_parts_per_rank
                  << "; router_probe=" << graph_router_probe
                  << "; total_router_parts=" << all_router_owners.size()
                  << "; M=" << hnsw_M
                  << "; efConstruction=" << hnsw_efc
                  << "; efSearch=" << hnsw_ef;
        }
        summary.notes = notes.str();
        ann_append_mpi_summary_csv(summary);

    }

    if (!local_mode) {
        delete[] test_query;
        delete[] test_gt;
        delete[] local_base;
    }

    MPI_Finalize();
    return 0;
}
#endif

static int run_serial_ann_main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    const std::string run_id = ann_make_run_id();
    ann_prepare_log_dirs();
    ann_write_platform_log(run_id);

    const std::map<std::string, std::string> run_cfg = load_run_config("files/configs/run_config.txt");
    const bool local_mode = ann_env_flag("ANN_LOCAL", false);
    const std::string algorithm = cfg_string(run_cfg, "ANN_ALGO", "ANN_ALGO", "pqfs");
    const size_t threads = cfg_size(run_cfg, "ANN_THREADS", "ANN_THREADS", 8, 1, 64);
    const size_t pqfs_p = cfg_size(run_cfg, "ANN_P", "ANN_P", 1500, 10, 1000000);
    const size_t ivf_nlist = cfg_size(run_cfg, "ANN_NLIST", "ANN_NLIST", 128, 1, 4096);
    const size_t ivf_nprobe = cfg_size(run_cfg, "ANN_NPROBE", "ANN_NPROBE", 32, 1, 4096);
    const size_t hnsw_M = cfg_size(run_cfg, "ANN_HNSW_M", "ANN_HNSW_M", 16, 4, 96);
    const size_t hnsw_efc = cfg_size(run_cfg, "ANN_HNSW_EFC", "ANN_HNSW_EFC", 100, 20, 2000);
    const size_t hnsw_ef = cfg_size(run_cfg, "ANN_HNSW_EF", "ANN_HNSW_EF", 80, 10, 2000);
    const bool hnsw_rebuild = cfg_flag(run_cfg, "ANN_HNSW_REBUILD", "ANN_HNSW_REBUILD", false);
    const size_t k = 10;

    if (algorithm.find("mpi_") == 0) {
        std::cerr << "ANN_ALGO=" << algorithm
                  << " requires compiling with mpic++ and -DANN_ENABLE_MPI\n";
        return 2;
    }

#ifdef _OPENMP
    omp_set_num_threads(static_cast<int>(threads));
#endif

    size_t test_number = 0, base_number = 0;
    size_t test_gt_d = 0, vecdim = 0;

    std::vector<float> local_base;
    std::vector<float> local_query;
    std::vector<int> local_gt;

    float* test_query = NULL;
    int* test_gt = NULL;
    float* base = NULL;

    if (local_mode) {
        generate_local_data(local_base, local_query, local_gt, base_number, test_number, vecdim, test_gt_d);
        base = local_base.data();
        test_query = local_query.data();
        test_gt = local_gt.data();
    } else {
        std::string data_path = "/anndata/";
        test_query = LoadData<float>(data_path + "DEEP100K.query.fbin", test_number, vecdim);
        test_gt = LoadData<int>(data_path + "DEEP100K.gt.query.100k.top100.bin", test_number, test_gt_d);
        base = LoadData<float>(data_path + "DEEP100K.base.100k.fbin", base_number, vecdim);

        if (test_query == NULL || test_gt == NULL || base == NULL) {
            std::cerr << "failed to load official data; set ANN_LOCAL=1 for local synthetic debugging\n";
            return 1;
        }

        // 只测试前2000条查询
        test_number = 2000;
    }

    std::vector<SearchResult> results;
    results.resize(test_number);

    bool needs_hnsw = (algorithm.find("hnsw") != std::string::npos);
    bool needs_pqfs = (algorithm.find("pqfs") != std::string::npos || algorithm.find("ivfpq") != std::string::npos);
    bool needs_ivf = (!needs_hnsw && algorithm.find("ivf") != std::string::npos);

    int64_t build_begin = ann_now_us();

    PQFastScanIndex pqfs_index = PQFastScanIndex();
    if (needs_pqfs || (!needs_ivf && algorithm.find("flat") == std::string::npos)) {
        pqfs_index = build_pq_fastscan_index(
            base,
            base_number,
            vecdim,
            12,
            16,
            local_mode ? std::min<size_t>(2000, base_number) : 8000,
            local_mode ? 3 : 5
        );
    }

    IVFIndex ivf_index = IVFIndex();
    if (needs_ivf) {
        ivf_index = build_ivf_index(
            base,
            base_number,
            vecdim,
            ivf_nlist,
            local_mode ? std::min<size_t>(2000, base_number) : 8000,
            local_mode ? 3 : 4
        );
    }

    HNSWAnnIndex hnsw_index = HNSWAnnIndex();
    if (needs_hnsw) {
        hnsw_index = build_hnsw_ann_index(
            base,
            base_number,
            vecdim,
            hnsw_M,
            hnsw_efc,
            hnsw_ef,
            local_mode ? true : hnsw_rebuild
        );
    }

    int64_t build_end = ann_now_us();
    double build_ms = static_cast<double>(build_end - build_begin) / 1000.0;

    // 如果你需要保存索引，可以在这里添加你需要的函数，你可以将下面的注释删除来查看pbs是否将build.index返回到你的files目录中
    // 要保存的目录必须是files/*
    // 每个人的目录空间有限，不需要的索引请及时删除，避免占空间太大
    // 不建议在正式测试查询时同时构建索引，否则性能波动会较大
    // 下面是一个构建hnsw索引的示例
    // build_index(base, base_number, vecdim);

    // 查询测试代码
    // 普通算法：逐条 query 计时，得到在线单查询平均 latency。
    // *_batch_omp / *_batch_pthread：query 级并行，创建一次并行区域/线程组处理整批 query，
    // latency_us 记录为整批 wall time / query 数，用于体现多线程吞吐型优化。
    double batch_avg_latency_us = -1.0;
    if (is_query_batch_algorithm(algorithm)) {
        const std::string inner_algorithm = batch_inner_algorithm(algorithm);
        int64_t t0 = ann_now_us();

        if (batch_uses_openmp(algorithm)) {
            run_query_batch_openmp(
                inner_algorithm,
                base,
                test_query,
                test_gt,
                test_number,
                test_gt_d,
                base_number,
                vecdim,
                k,
                pqfs_index,
                pqfs_p,
                ivf_index,
                ivf_nprobe,
                hnsw_index,
                threads,
                results
            );
        } else {
            run_query_batch_pthread(
                inner_algorithm,
                base,
                test_query,
                test_gt,
                test_number,
                test_gt_d,
                base_number,
                vecdim,
                k,
                pqfs_index,
                pqfs_p,
                ivf_index,
                ivf_nprobe,
                hnsw_index,
                threads,
                results
            );
        }

        int64_t diff = ann_now_us() - t0;
        batch_avg_latency_us = static_cast<double>(diff) / static_cast<double>(test_number);
    } else {
        for(size_t i = 0; i < test_number; ++i) {
            int64_t t0 = ann_now_us();

            // 该文件已有代码中你只能修改该函数的调用方式
            // 可以任意修改函数名，函数参数或者改为调用成员函数，但是不能修改函数返回值。
            auto res = run_one_search(
                algorithm,
                base,
                test_query + i * vecdim,
                base_number,
                vecdim,
                k,
                pqfs_index,
                pqfs_p,
                ivf_index,
                ivf_nprobe,
                hnsw_index,
                threads
            );

            int64_t diff = ann_now_us() - t0;
            float recall = compute_recall_and_consume(res, test_gt, i, test_gt_d, k);
            results[i] = {recall, diff};
        }
    }

    double avg_recall = 0.0, avg_latency = 0.0;
    for(size_t i = 0; i < test_number; ++i) {
        avg_recall += results[i].recall;
        if (batch_avg_latency_us < 0.0) {
            avg_latency += results[i].latency;
        }
    }
    avg_recall /= static_cast<double>(test_number);
    if (batch_avg_latency_us >= 0.0) {
        avg_latency = batch_avg_latency_us;
    } else {
        avg_latency /= static_cast<double>(test_number);
    }

    // 浮点误差可能导致一些精确算法平均recall不是1
    std::cout << "average recall: "<<avg_recall<<"\n";
    std::cout << "average latency (us): "<<avg_latency<<"\n";

    std::string backend = "serial";
    if (algorithm.find("omp") != std::string::npos || algorithm.find("openmp") != std::string::npos) {
        backend = is_query_batch_algorithm(algorithm) ? "openmp_query_batch" : "openmp";
    } else if (algorithm.find("pthread") != std::string::npos) {
        backend = is_query_batch_algorithm(algorithm) ? "pthread_query_batch" : "pthread";
    }

    AnnRunSummary summary;
    summary.run_id = run_id;
    summary.mode = local_mode ? "local" : "official";
    summary.algorithm = algorithm;
    summary.backend = backend;
    summary.threads = threads;
    summary.base_n = base_number;
    summary.query_n = test_number;
    summary.k = k;
    summary.nlist = needs_ivf ? ivf_index.nlist : 0;
    summary.nprobe = needs_ivf ? ivf_nprobe : (needs_hnsw ? hnsw_ef : 0);
    summary.p = needs_hnsw ? hnsw_efc : pqfs_p;
    summary.recall = avg_recall;
    summary.latency_us = avg_latency;
    summary.speedup = 0.0;
    summary.build_ms = build_ms;
    if (needs_hnsw) {
        std::ostringstream hnsw_notes;
        hnsw_notes << (is_query_batch_algorithm(algorithm) ? "phase6: HNSW query-level batch parallel; wall_time_per_query" : "phase6: HNSW baseline")
                   << "; M=" << hnsw_M
                   << "; efConstruction=" << hnsw_efc
                   << "; efSearch=" << hnsw_ef
                   << "; loaded=" << (hnsw_index.loaded_from_file ? "yes" : "no");
        summary.notes = hnsw_notes.str();
    } else if (algorithm.find("ivfpq") != std::string::npos) {
        summary.notes = is_query_batch_algorithm(algorithm) ? "phase5: IVF-PQ query-level batch parallel; wall_time_per_query" : "phase5: IVF-PQ baseline + IVF-PQ MT";
    } else if (needs_ivf) {
        summary.notes = is_query_batch_algorithm(algorithm) ? "phase3-4: IVF query-level batch parallel; wall_time_per_query" : "phase3-4: IVF-SIMD baseline + IVF MT";
    } else {
        summary.notes = is_query_batch_algorithm(algorithm) ? "phase1-3b: query-level batch parallel; wall_time_per_query" : "phase1-3: logging + Flat-SIMD MT + PQFastScan MT";
    }
    ann_append_summary_csv(summary);

    if (!local_mode) {
        delete[] test_query;
        delete[] test_gt;
        delete[] base;
    }
    return 0;
}

int main(int argc, char *argv[])
{
#ifdef ANN_ENABLE_MPI
    return run_mpi_ann_main(argc, argv);
#else
    return run_serial_ann_main(argc, argv);
#endif
}
