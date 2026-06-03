#pragma once

#include <algorithm>
#include <cerrno>
#include <climits>
#include <cstdlib>
#include <ctime>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <queue>
#include <sstream>
#include <string>
#include <sys/stat.h>
#include <sys/time.h>
#if defined(_WIN32)
#include <direct.h>
#else
#include <unistd.h>
#endif
#include <utility>
#include <vector>

struct AnnRunSummary {
    std::string run_id;
    std::string mode;
    std::string algorithm;
    std::string backend;
    size_t threads;
    size_t base_n;
    size_t query_n;
    size_t k;
    size_t nlist;
    size_t nprobe;
    size_t p;
    double recall;
    double latency_us;
    double speedup;
    double build_ms;
    std::string notes;
};

static inline const char* ann_getenv(const char* name)
{
    const char* v = std::getenv(name);
    if (v == NULL || v[0] == '\0') return NULL;
    return v;
}

static inline bool ann_env_flag(const char* name, bool default_value)
{
    const char* v = ann_getenv(name);
    if (!v) return default_value;
    std::string s(v);
    std::transform(s.begin(), s.end(), s.begin(), ::tolower);
    return s == "1" || s == "true" || s == "yes" || s == "on";
}

static inline std::string ann_env_string(const char* name, const std::string& default_value)
{
    const char* v = ann_getenv(name);
    if (!v) return default_value;
    return std::string(v);
}

static inline size_t ann_env_size(const char* name, size_t default_value, size_t lo, size_t hi)
{
    const char* v = ann_getenv(name);
    if (!v) return default_value;
    char* end = NULL;
    unsigned long x = std::strtoul(v, &end, 10);
    if (end == v) return default_value;
    if (x < lo) x = lo;
    if (x > hi) x = hi;
    return static_cast<size_t>(x);
}

static inline int64_t ann_now_us()
{
    const unsigned long Converter = 1000 * 1000;
    struct timeval val;
    gettimeofday(&val, NULL);
    return static_cast<int64_t>(val.tv_sec * Converter + val.tv_usec);
}

static inline std::string ann_make_run_id()
{
    time_t raw = time(NULL);
    struct tm tmv;
#if defined(_POSIX_THREAD_SAFE_FUNCTIONS)
    localtime_r(&raw, &tmv);
#else
    tmv = *std::localtime(&raw);
#endif
    char buf[64];
    std::strftime(buf, sizeof(buf), "%Y%m%d_%H%M%S", &tmv);
    return std::string(buf);
}

static inline bool ann_path_exists(const std::string& path)
{
    struct stat st;
    return stat(path.c_str(), &st) == 0;
}

static inline void ann_mkdir_if_needed(const std::string& path)
{
    if (path.empty() || ann_path_exists(path)) return;
#if defined(_WIN32)
    if (_mkdir(path.c_str()) != 0 && errno != EEXIST) {
#else
    if (mkdir(path.c_str(), 0755) != 0 && errno != EEXIST) {
#endif
        std::cerr << "warning: cannot create directory " << path << "\n";
    }
}

static inline void ann_prepare_log_dirs()
{
    ann_mkdir_if_needed("files");
    ann_mkdir_if_needed("files/exp_logs");
    ann_mkdir_if_needed("files/configs");
    ann_mkdir_if_needed("files/indexes");
}

static inline std::string ann_mpi_results_dir()
{
    return "files/mpi_results";
}

static inline std::string ann_mpi_exp_logs_dir()
{
    return ann_mpi_results_dir() + "/exp_logs";
}

static inline std::string ann_mpi_run_outputs_dir()
{
    return ann_mpi_results_dir() + "/run_outputs";
}


static inline std::string ann_mpi_summary_path()
{
    return ann_mpi_exp_logs_dir() + "/summary.csv";
}

static inline std::string ann_mpi_platform_path()
{
    return ann_mpi_exp_logs_dir() + "/platform.txt";
}

static inline void ann_prepare_mpi_log_dirs()
{
    ann_mkdir_if_needed("files");
    ann_mkdir_if_needed(ann_mpi_results_dir());
    ann_mkdir_if_needed(ann_mpi_exp_logs_dir());
    ann_mkdir_if_needed(ann_mpi_run_outputs_dir());
    ann_mkdir_if_needed("files/configs");
}

static inline std::string ann_csv_escape(const std::string& s)
{
    bool need_quote = false;
    for (size_t i = 0; i < s.size(); ++i) {
        if (s[i] == ',' || s[i] == '"' || s[i] == '\n' || s[i] == '\r') {
            need_quote = true;
            break;
        }
    }
    if (!need_quote) return s;
    std::string out = "\"";
    for (size_t i = 0; i < s.size(); ++i) {
        if (s[i] == '"') out += "\"\"";
        else out += s[i];
    }
    out += "\"";
    return out;
}

static inline void ann_append_summary_csv(const AnnRunSummary& r)
{
    ann_prepare_log_dirs();
    const std::string path = "files/exp_logs/summary.csv";
    bool write_header = !ann_path_exists(path);

    std::ofstream fout(path.c_str(), std::ios::out | std::ios::app);
    if (!fout) {
        std::cerr << "warning: cannot open " << path << " for writing\n";
        return;
    }

    if (write_header) {
        fout << "run_id,mode,algorithm,backend,threads,base_n,query_n,k,nlist,nprobe,p,recall,latency_us,speedup,build_ms,notes\n";
    }

    fout << ann_csv_escape(r.run_id) << ','
         << ann_csv_escape(r.mode) << ','
         << ann_csv_escape(r.algorithm) << ','
         << ann_csv_escape(r.backend) << ','
         << r.threads << ','
         << r.base_n << ','
         << r.query_n << ','
         << r.k << ','
         << r.nlist << ','
         << r.nprobe << ','
         << r.p << ','
         << std::setprecision(8) << r.recall << ','
         << std::setprecision(8) << r.latency_us << ','
         << std::setprecision(8) << r.speedup << ','
         << std::setprecision(8) << r.build_ms << ','
         << ann_csv_escape(r.notes) << '\n';
}

static inline void ann_append_mpi_summary_csv(const AnnRunSummary& r)
{
    ann_prepare_mpi_log_dirs();
    const std::string path = ann_mpi_summary_path();
    bool write_header = !ann_path_exists(path);

    std::ofstream fout(path.c_str(), std::ios::out | std::ios::app);
    if (!fout) {
        std::cerr << "warning: cannot open " << path << " for writing\n";
        return;
    }

    if (write_header) {
        fout << "run_id,mode,algorithm,backend,threads,base_n,query_n,k,nlist,nprobe,p,recall,latency_us,speedup,build_ms,notes\n";
    }

    fout << ann_csv_escape(r.run_id) << ','
         << ann_csv_escape(r.mode) << ','
         << ann_csv_escape(r.algorithm) << ','
         << ann_csv_escape(r.backend) << ','
         << r.threads << ','
         << r.base_n << ','
         << r.query_n << ','
         << r.k << ','
         << r.nlist << ','
         << r.nprobe << ','
         << r.p << ','
         << std::setprecision(8) << r.recall << ','
         << std::setprecision(8) << r.latency_us << ','
         << std::setprecision(8) << r.speedup << ','
         << std::setprecision(8) << r.build_ms << ','
         << ann_csv_escape(r.notes) << '\n';
}

static inline void ann_write_platform_log(const std::string& run_id)
{
    ann_prepare_log_dirs();
    std::ofstream fout("files/exp_logs/platform.txt", std::ios::out | std::ios::app);
    if (!fout) return;

    std::string host = "unknown";
#if defined(_WIN32)
    const char* computer_name = std::getenv("COMPUTERNAME");
    if (computer_name && computer_name[0]) host = computer_name;
#else
    char host_buf[256];
    if (gethostname(host_buf, sizeof(host_buf)) == 0) {
        host_buf[sizeof(host_buf) - 1] = '\0';
        host = host_buf;
    }
#endif

    fout << "run_id=" << run_id << '\n';
    fout << "hostname=" << host << '\n';
#if defined(__aarch64__)
    fout << "arch=aarch64\n";
#elif defined(__arm__)
    fout << "arch=arm\n";
#elif defined(__x86_64__)
    fout << "arch=x86_64\n";
#else
    fout << "arch=unknown\n";
#endif
#if defined(__ARM_NEON)
    fout << "neon=1\n";
#else
    fout << "neon=0\n";
#endif
#ifdef _OPENMP
    fout << "openmp=" << _OPENMP << '\n';
#else
    fout << "openmp=0\n";
#endif
    fout << "ANN_ALGO=" << ann_env_string("ANN_ALGO", "") << '\n';
    fout << "ANN_THREADS=" << ann_env_string("ANN_THREADS", "") << '\n';
    fout << "ANN_P=" << ann_env_string("ANN_P", "") << '\n';
    fout << "ANN_LOCAL=" << ann_env_string("ANN_LOCAL", "") << '\n';
    fout << "---\n";
}

static inline void ann_write_mpi_platform_log(const std::string& run_id)
{
    ann_prepare_mpi_log_dirs();
    std::ofstream fout(ann_mpi_platform_path().c_str(), std::ios::out | std::ios::app);
    if (!fout) return;

    std::string host = "unknown";
#if defined(_WIN32)
    const char* computer_name = std::getenv("COMPUTERNAME");
    if (computer_name && computer_name[0]) host = computer_name;
#else
    char host_buf[256];
    if (gethostname(host_buf, sizeof(host_buf)) == 0) {
        host_buf[sizeof(host_buf) - 1] = '\0';
        host = host_buf;
    }
#endif

    fout << "run_id=" << run_id << '\n';
    fout << "hostname=" << host << '\n';
#if defined(__aarch64__)
    fout << "arch=aarch64\n";
#elif defined(__arm__)
    fout << "arch=arm\n";
#elif defined(__x86_64__)
    fout << "arch=x86_64\n";
#else
    fout << "arch=unknown\n";
#endif
#if defined(__ARM_NEON)
    fout << "neon=1\n";
#else
    fout << "neon=0\n";
#endif
#ifdef _OPENMP
    fout << "openmp=" << _OPENMP << '\n';
#else
    fout << "openmp=0\n";
#endif
    fout << "ANN_ALGO=" << ann_env_string("ANN_ALGO", "") << '\n';
    fout << "ANN_THREADS=" << ann_env_string("ANN_THREADS", "") << '\n';
    fout << "ANN_P=" << ann_env_string("ANN_P", "") << '\n';
    fout << "ANN_LOCAL=" << ann_env_string("ANN_LOCAL", "") << '\n';
    fout << "result_dir=" << ann_mpi_results_dir() << '\n';
    fout << "---\n";
}

static inline void ann_topk_push(
    std::priority_queue<std::pair<float, uint32_t> >& q,
    float distance,
    uint32_t id,
    size_t k
) {
    if (q.size() < k) {
        q.push(std::make_pair(distance, id));
    } else if (distance < q.top().first) {
        q.pop();
        q.push(std::make_pair(distance, id));
    }
}

static inline void ann_merge_topk(
    std::priority_queue<std::pair<float, uint32_t> >& dst,
    std::priority_queue<std::pair<float, uint32_t> > src,
    size_t k
) {
    while (!src.empty()) {
        ann_topk_push(dst, src.top().first, src.top().second, k);
        src.pop();
    }
}
