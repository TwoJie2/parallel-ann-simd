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
#include <map>
#include <pthread.h>
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
           algorithm == "flat_batch_omp" ||
           algorithm == "flat_query_omp" ||
           algorithm == "flat_batch_pthread" ||
           algorithm == "flat_query_pthread";
}

static inline std::string batch_inner_algorithm(const std::string& algorithm)
{
    if (algorithm.find("flat") == 0) {
        return "flat";
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

int main(int argc, char *argv[])
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
    const size_t k = 10;

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

    int64_t build_begin = ann_now_us();
    PQFastScanIndex pqfs_index = build_pq_fastscan_index(
        base,
        base_number,
        vecdim,
        12,
        16,
        local_mode ? std::min<size_t>(2000, base_number) : 8000,
        local_mode ? 3 : 5
    );
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
    summary.nlist = 0;
    summary.nprobe = 0;
    summary.p = pqfs_p;
    summary.recall = avg_recall;
    summary.latency_us = avg_latency;
    summary.speedup = 0.0;
    summary.build_ms = build_ms;
    summary.notes = is_query_batch_algorithm(algorithm) ? "phase1-3b: query-level batch parallel; wall_time_per_query" : "phase1-3: logging + Flat-SIMD MT + PQFastScan MT";
    ann_append_summary_csv(summary);

    if (!local_mode) {
        delete[] test_query;
        delete[] test_gt;
        delete[] base;
    }
    return 0;
}
