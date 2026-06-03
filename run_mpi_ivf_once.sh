#!/bin/bash
set -u

cd /home/s2412677/ann || exit 1

echo "===== [1/7] Check required files ====="

missing=0
for f in main.cc ann_mpi_common.h ann_mt_common.h files/configs/run_config.txt qsub_mpi.sh; do
    if [ ! -f "$f" ]; then
        echo "MISSING: $f"
        missing=1
    else
        echo "OK: $f"
    fi
done

if [ "$missing" -ne 0 ]; then
    echo "Required files are missing. Stop."
    exit 1
fi

echo
echo "===== [2/7] Check config and qsub script ====="
cat files/configs/run_config.txt

echo

if grep -q "^ANN_ALGO=mpi_ivf" files/configs/run_config.txt; then
    echo "OK: ANN_ALGO=mpi_ivf"
else
    echo "ERROR: files/configs/run_config.txt should contain ANN_ALGO=mpi_ivf"
    exit 1
fi

if grep -q "^ANN_THREADS=1" files/configs/run_config.txt; then
    echo "OK: ANN_THREADS=1"
else
    echo "WARNING: ANN_THREADS is not 1. Current stage should normally use ANN_THREADS=1."
fi

ACTIVE_QSUB_LINES=$(grep -v '^[[:space:]]*#' qsub_mpi.sh)

if echo "$ACTIVE_QSUB_LINES" | grep -q "/ntt/"; then
    echo "ERROR: qsub_mpi.sh active commands still point to /ntt/. Stop."
    exit 1
fi

if echo "$ACTIVE_QSUB_LINES" | grep -q "/ann/"; then
    echo "OK: qsub_mpi.sh active commands point to ann."
else
    echo "ERROR: qsub_mpi.sh active commands do not point to /ann/. Stop."
    exit 1
fi

if echo "$ACTIVE_QSUB_LINES" | grep -q "mpiexec"; then
    echo "OK: qsub_mpi.sh contains mpiexec."
else
    echo "ERROR: qsub_mpi.sh does not contain mpiexec. Stop."
    exit 1
fi

if echo "$ACTIVE_QSUB_LINES" | grep -q "\-np 8"; then
    echo "OK: qsub_mpi.sh uses -np 8."
else
    echo "WARNING: qsub_mpi.sh does not use -np 8. Check whether this is intended."
fi

echo
echo "===== [3/7] Clean previous MPI result cache ====="

rm -f test.o test.e

if [ -d files/mpi_results ]; then
    bak="files/mpi_results.bak.$(date +%Y%m%d_%H%M%S)"
    echo "Backup old files/mpi_results to $bak"
    mv files/mpi_results "$bak"
fi

mkdir -p files/mpi_results/run_outputs
mkdir -p files/mpi_results/report_tables

echo
echo "===== [4/7] Compile MPI version ====="

mpic++ main.cc -o main -O2 -fopenmp -lpthread -std=c++11 -DANN_ENABLE_MPI
compile_status=$?

if [ "$compile_status" -ne 0 ]; then
    echo "Compile failed."
    exit 2
fi

echo "Compile OK."

echo
echo "===== [5/7] Submit qsub_mpi.sh ====="

JOB_ID=$(qsub qsub_mpi.sh | tr -d '[:space:]')
qsub_status=$?

if [ "$qsub_status" -ne 0 ] || [ -z "$JOB_ID" ]; then
    echo "qsub failed."
    exit 3
fi

echo "JOB_ID=${JOB_ID}"
echo "$JOB_ID" > files/mpi_results/run_outputs/last_job_id.txt

echo
echo "===== [6/7] Watch job status ====="
echo "Current job: ${JOB_ID}"
echo "Use this command in another terminal if needed:"
echo "qstat -u s2412677"

MAX_WAIT_SECONDS=${MAX_WAIT_SECONDS:-3600}
SLEEP_SECONDS=15
elapsed=0

while qstat "$JOB_ID" >/dev/null 2>&1; do
    if [ "$elapsed" -ge "$MAX_WAIT_SECONDS" ]; then
        echo "Job still exists after ${MAX_WAIT_SECONDS}s."
        echo "It may still be queued/running, or it may be deadlocked."
        echo "Check with: qstat -u s2412677"
        echo "If confirmed deadlocked, delete with: qdel ${JOB_ID}"
        exit 4
    fi

    echo "waiting... elapsed=${elapsed}s"
    sleep "$SLEEP_SECONDS"
    elapsed=$((elapsed + SLEEP_SECONDS))
done

sleep 3

echo
echo "===== [7/7] Collect and print result ====="

mkdir -p files/mpi_results/run_outputs
mkdir -p files/mpi_results/report_tables

if [ -f test.o ]; then
    cp -f test.o files/mpi_results/run_outputs/mpi_ivf.test.o
else
    echo "WARNING: test.o not found."
fi

if [ -f test.e ]; then
    cp -f test.e files/mpi_results/run_outputs/mpi_ivf.test.e
else
    echo "WARNING: test.e not found."
fi

echo
echo "----- tail test.o -----"
if [ -f test.o ]; then
    tail -n 80 test.o
else
    echo "test.o not found"
fi

echo
echo "----- tail test.e -----"
if [ -f test.e ]; then
    tail -n 120 test.e
else
    echo "test.e not found"
fi

echo
echo "----- summary.csv -----"
if [ -f files/mpi_results/exp_logs/summary.csv ]; then
    cat files/mpi_results/exp_logs/summary.csv
else
    echo "ERROR: files/mpi_results/exp_logs/summary.csv not found."
    echo "This means the MPI job did not finish correctly or result files were not copied back."
    echo "Send me test.o and test.e for diagnosis."
    exit 5
fi

echo
echo "----- platform.txt -----"
if [ -f files/mpi_results/exp_logs/platform.txt ]; then
    cat files/mpi_results/exp_logs/platform.txt
else
    echo "WARNING: platform.txt not found."
fi

echo
echo "----- Generate report snippet -----"

python3 - <<'PY'
import csv
from pathlib import Path

summary = Path("files/mpi_results/exp_logs/summary.csv")
out = Path("files/mpi_results/report_tables/mpi_ivf_report_snippet.md")
out.parent.mkdir(parents=True, exist_ok=True)

try:
    rows = list(csv.DictReader(summary.open()))
except Exception as e:
    raise SystemExit(f"Failed to read summary.csv: {e}")

if not rows:
    raise SystemExit("summary.csv has no data rows")

r = rows[-1]

def get(name):
    return r.get(name, "")

text = f"""# MPI-IVF 实验结果摘录

| 指标 | 数值 |
|---|---:|
| algorithm | {get('algorithm')} |
| backend | {get('backend')} |
| mode | {get('mode')} |
| threads | {get('threads')} |
| base_n | {get('base_n')} |
| query_n | {get('query_n')} |
| k | {get('k')} |
| nlist | {get('nlist')} |
| nprobe | {get('nprobe')} |
| recall | {get('recall')} |
| latency_us | {get('latency_us')} |
| build_ms | {get('build_ms')} |

notes:

{get('notes')}
"""

out.write_text(text, encoding="utf-8")
print(text)
print(f"Generated: {out}")
PY

echo
echo "DONE."
echo "No result package was created."
echo
echo "If you need me to check the result, send these files or paste their contents:"
echo "1) files/mpi_results/exp_logs/summary.csv"
echo "2) files/mpi_results/exp_logs/platform.txt"
echo "3) files/mpi_results/run_outputs/mpi_ivf.test.o"
echo "4) files/mpi_results/run_outputs/mpi_ivf.test.e"
echo "5) files/mpi_results/report_tables/mpi_ivf_report_snippet.md"