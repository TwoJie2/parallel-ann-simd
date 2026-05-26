#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Generate report-ready tables after all ANN multi-thread experiments.

Input:
  files/exp_logs/summary.csv

Output:
  files/report_tables/
    flat_threads.csv
    pqfs_threads.csv
    ivf_nprobe.csv
    ivf_threads.csv
    ivfpq_threads.csv
    hnsw_efsearch.csv
    hnsw_threads.csv
    final_best_compare.csv
    report_tables.md

Usage:
  cd ~/ann
  python3 make_report_tables_all.py
"""

import csv
import os
from collections import defaultdict

SUMMARY = os.path.join("files", "exp_logs", "summary.csv")
OUT_DIR = os.path.join("files", "report_tables")


def as_int(x, default=0):
    try:
        return int(float(x))
    except Exception:
        return default


def as_float(x, default=0.0):
    try:
        return float(x)
    except Exception:
        return default


def fmt(x, nd=4):
    try:
        return f"{float(x):.{nd}f}"
    except Exception:
        return str(x)


def read_rows():
    if not os.path.exists(SUMMARY):
        raise FileNotFoundError(f"Cannot find {SUMMARY}")
    with open(SUMMARY, "r", encoding="utf-8", errors="replace", newline="") as f:
        rows = list(csv.DictReader(f))
    for r in rows:
        r["threads_i"] = as_int(r.get("threads"))
        r["nlist_i"] = as_int(r.get("nlist"))
        r["nprobe_i"] = as_int(r.get("nprobe"))
        r["p_i"] = as_int(r.get("p"))
        r["latency_f"] = as_float(r.get("latency_us"))
        r["recall_f"] = as_float(r.get("recall"))
        r["build_f"] = as_float(r.get("build_ms"))
    return rows


def latest_by(rows, key_fields):
    rows = sorted(rows, key=lambda r: r.get("run_id", ""))
    d = {}
    for r in rows:
        key = tuple(r.get(k, "") for k in key_fields)
        d[key] = r
    return list(d.values())


def write_csv(filename, headers, rows):
    path = os.path.join(OUT_DIR, filename)
    with open(path, "w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fieldnames=headers)
        w.writeheader()
        for r in rows:
            w.writerow({h: r.get(h, "") for h in headers})


def md_table(headers, rows):
    lines = []
    lines.append("| " + " | ".join(headers) + " |")
    lines.append("| " + " | ".join(["---"] * len(headers)) + " |")
    for r in rows:
        lines.append("| " + " | ".join(str(r.get(h, "")) for h in headers) + " |")
    return "\n".join(lines)


def make_threads_table(rows, algs, filename, base_alg, base_name, extra_filter=None):
    selected = [r for r in rows if r.get("algorithm") in algs]
    if extra_filter:
        selected = [r for r in selected if extra_filter(r)]
    selected = latest_by(selected, ["algorithm", "threads", "nlist", "nprobe", "p"])
    selected = sorted(selected, key=lambda r: (r.get("algorithm"), r["threads_i"], r["nprobe_i"], r["p_i"]))

    base_latency = None
    for r in selected:
        if r.get("algorithm") == base_alg:
            base_latency = r["latency_f"]
            break
    if base_latency is None:
        base_latency = min([r["latency_f"] for r in selected if r["latency_f"] > 0], default=0.0)

    out = []
    for r in selected:
        lat = r["latency_f"]
        out.append({
            "algorithm": r.get("algorithm"),
            "backend": r.get("backend"),
            "threads": r["threads_i"],
            "nlist": r["nlist_i"],
            "nprobe_or_ef": r["nprobe_i"],
            "p": r["p_i"],
            "recall": fmt(r["recall_f"], 5),
            "latency_us": fmt(lat, 3),
            f"speedup_vs_{base_name}": fmt(base_latency / lat if lat else 0, 2),
        })
    headers = ["algorithm", "backend", "threads", "nlist", "nprobe_or_ef", "p", "recall", "latency_us", f"speedup_vs_{base_name}"]
    write_csv(filename, headers, out)
    return headers, out


def main():
    os.makedirs(OUT_DIR, exist_ok=True)
    rows = [r for r in read_rows() if r.get("mode") == "official"]

    md_parts = ["# Report Tables\n"]

    # Flat
    headers, flat_out = make_threads_table(
        rows,
        {"flat", "flat_omp", "flat_pthread", "flat_batch_omp", "flat_batch_pthread"},
        "flat_threads.csv",
        "flat",
        "flat",
    )
    md_parts += ["## Flat-SIMD 多线程", md_table(headers, flat_out)]

    # PQFastScan, fixed p=1500
    headers, pq_out = make_threads_table(
        rows,
        {"pqfs", "pqfs_omp", "pqfs_pthread", "pqfs_batch_omp", "pqfs_batch_pthread"},
        "pqfs_threads.csv",
        "pqfs",
        "pqfs",
        extra_filter=lambda r: r["p_i"] == 1500,
    )
    md_parts += ["## PQFastScan 多线程", md_table(headers, pq_out)]

    # IVF nprobe curve
    ivf_np = [r for r in rows if r.get("algorithm") == "ivf" and r["nlist_i"] == 128]
    ivf_np = latest_by(ivf_np, ["algorithm", "nlist", "nprobe"])
    ivf_np = sorted(ivf_np, key=lambda r: r["nprobe_i"])
    ivf_np_out = [{
        "nlist": r["nlist_i"],
        "nprobe": r["nprobe_i"],
        "recall": fmt(r["recall_f"], 5),
        "latency_us": fmt(r["latency_f"], 3),
        "build_ms": fmt(r["build_f"], 3),
        "notes": r.get("notes", ""),
    } for r in ivf_np]
    write_csv("ivf_nprobe.csv", ["nlist", "nprobe", "recall", "latency_us", "build_ms", "notes"], ivf_np_out)
    md_parts += ["## IVF nprobe 曲线", md_table(["nlist", "nprobe", "recall", "latency_us", "build_ms", "notes"], ivf_np_out)]

    # IVF threads
    headers, ivf_out = make_threads_table(
        rows,
        {"ivf", "ivf_omp", "ivf_pthread", "ivf_batch_omp", "ivf_batch_pthread"},
        "ivf_threads.csv",
        "ivf",
        "ivf",
        extra_filter=lambda r: r["nlist_i"] == 128 and r["nprobe_i"] == 32,
    )
    md_parts += ["## IVF 多线程", md_table(headers, ivf_out)]

    # IVFPQ threads
    headers, ivfpq_out = make_threads_table(
        rows,
        {"ivfpq", "ivfpq_omp", "ivfpq_pthread", "ivfpq_batch_omp", "ivfpq_batch_pthread"},
        "ivfpq_threads.csv",
        "ivfpq",
        "ivfpq",
        extra_filter=lambda r: r["nlist_i"] == 128 and r["nprobe_i"] == 32 and r["p_i"] == 1500,
    )
    md_parts += ["## IVF-PQ 多线程", md_table(headers, ivfpq_out)]

    # HNSW efSearch curve
    hnsw_ef = [r for r in rows if r.get("algorithm") == "hnsw"]
    hnsw_ef = latest_by(hnsw_ef, ["algorithm", "nprobe"])
    hnsw_ef = sorted(hnsw_ef, key=lambda r: r["nprobe_i"])
    hnsw_ef_out = [{
        "efSearch": r["nprobe_i"],
        "recall": fmt(r["recall_f"], 5),
        "latency_us": fmt(r["latency_f"], 3),
        "build_or_load_ms": fmt(r["build_f"], 3),
        "notes": r.get("notes", ""),
    } for r in hnsw_ef]
    write_csv("hnsw_efsearch.csv", ["efSearch", "recall", "latency_us", "build_or_load_ms", "notes"], hnsw_ef_out)
    md_parts += ["## HNSW efSearch 曲线", md_table(["efSearch", "recall", "latency_us", "build_or_load_ms", "notes"], hnsw_ef_out)]

    # HNSW threads, fixed efSearch=80
    headers, hnsw_out = make_threads_table(
        rows,
        {"hnsw", "hnsw_batch_omp", "hnsw_batch_pthread"},
        "hnsw_threads.csv",
        "hnsw",
        "hnsw_ef80",
        extra_filter=lambda r: r["nprobe_i"] == 80,
    )
    md_parts += ["## HNSW 多线程", md_table(headers, hnsw_out)]

    # Final best compare: choose best latency per algorithm family / variant
    target_algs = [
        "flat", "flat_omp", "flat_pthread", "flat_batch_omp", "flat_batch_pthread",
        "pqfs", "pqfs_omp", "pqfs_pthread", "pqfs_batch_omp", "pqfs_batch_pthread",
        "ivf", "ivf_omp", "ivf_pthread", "ivf_batch_omp", "ivf_batch_pthread",
        "ivfpq", "ivfpq_omp", "ivfpq_pthread", "ivfpq_batch_omp", "ivfpq_batch_pthread",
        "hnsw", "hnsw_batch_omp", "hnsw_batch_pthread",
    ]
    latest_all = latest_by([r for r in rows if r.get("algorithm") in set(target_algs)],
                           ["algorithm", "threads", "nlist", "nprobe", "p"])
    by_alg = defaultdict(list)
    for r in latest_all:
        by_alg[r.get("algorithm")].append(r)

    final = []
    for alg in target_algs:
        if alg in by_alg:
            best = min(by_alg[alg], key=lambda r: r["latency_f"])
            final.append({
                "algorithm": alg,
                "backend": best.get("backend"),
                "threads": best["threads_i"],
                "nlist": best["nlist_i"],
                "nprobe_or_ef": best["nprobe_i"],
                "p": best["p_i"],
                "recall": fmt(best["recall_f"], 5),
                "latency_us": fmt(best["latency_f"], 3),
                "build_ms": fmt(best["build_f"], 3),
            })
    final = sorted(final, key=lambda r: as_float(r["latency_us"]))
    final_headers = ["algorithm", "backend", "threads", "nlist", "nprobe_or_ef", "p", "recall", "latency_us", "build_ms"]
    write_csv("final_best_compare.csv", final_headers, final)
    md_parts += ["## 各算法最佳结果对比", md_table(final_headers, final)]

    with open(os.path.join(OUT_DIR, "report_tables.md"), "w", encoding="utf-8") as f:
        f.write("\n\n".join(md_parts))

    print(f"[DONE] Generated report tables in: {OUT_DIR}")
    for fn in [
        "flat_threads.csv",
        "pqfs_threads.csv",
        "ivf_nprobe.csv",
        "ivf_threads.csv",
        "ivfpq_threads.csv",
        "hnsw_efsearch.csv",
        "hnsw_threads.csv",
        "final_best_compare.csv",
        "report_tables.md",
    ]:
        print(" - " + os.path.join(OUT_DIR, fn))


if __name__ == "__main__":
    main()
