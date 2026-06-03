#!/bin/bash
set -u

# Run one extra pure-MPI IVF experiment: np=16, threads=1.
# It submits qsub_mpi.sh and keeps qsub_mpi.sh close to the official template.
# It does not call run_mpi_ivf_once.sh and does not create report_tables.

PROJECT_DIR=${PROJECT_DIR:-/home/${USER}/ann}
MAX_WAIT_SECONDS=${MAX_WAIT_SECONDS:-5400}
SLEEP_SECONDS=${SLEEP_SECONDS:-15}
STRICT=${STRICT:-1}
SKIP_EXISTING=${SKIP_EXISTING:-1}

LABEL=${LABEL:-mpi_scale_np16_t1_nl128_npb32}
ANN_ALGO_RUN=${ANN_ALGO_RUN:-mpi_ivf}
ANN_THREADS_RUN=${ANN_THREADS_RUN:-1}
ANN_P_RUN=${ANN_P_RUN:-1500}
ANN_NLIST_RUN=${ANN_NLIST_RUN:-128}
ANN_NPROBE_RUN=${ANN_NPROBE_RUN:-32}
PBS_NODES_RUN=${PBS_NODES_RUN:-2}
PBS_PPN_RUN=${PBS_PPN_RUN:-8}
MPI_NP_RUN=${MPI_NP_RUN:-16}

cd "$PROJECT_DIR" || exit 1

need_file() {
    if [ ! -f "$1" ]; then
        echo "ERROR: missing $1"
        exit 1
    fi
}

need_file main.cc
need_file ann_mpi_common.h
need_file ann_mt_common.h
need_file files/configs/run_config.txt
need_file qsub_mpi.sh

ORIG_CONFIG=$(cat files/configs/run_config.txt)
ORIG_QSUB=$(cat qsub_mpi.sh)

restore_original_files() {
    printf '%s\n' "$ORIG_CONFIG" > files/configs/run_config.txt
    printf '%s\n' "$ORIG_QSUB" > qsub_mpi.sh
}
trap restore_original_files EXIT INT TERM

set_config() {
    python3 - "$@" <<'PY'
import sys
from pathlib import Path
path = Path("files/configs/run_config.txt")
updates = {}
for arg in sys.argv[1:]:
    k, v = arg.split("=", 1)
    updates[k] = v
lines = path.read_text(encoding="utf-8").splitlines()
out = []
seen = set()
for line in lines:
    stripped = line.strip()
    if stripped and not stripped.startswith("#") and "=" in stripped:
        k = stripped.split("=", 1)[0]
        if k in updates:
            out.append(f"{k}={updates[k]}")
            seen.add(k)
            continue
    out.append(line)
for k, v in updates.items():
    if k not in seen:
        out.append(f"{k}={v}")
path.write_text("\n".join(out).rstrip() + "\n", encoding="utf-8")
PY
}

set_qsub() {
    local nodes="$1"
    local ppn="$2"
    local np="$3"
    python3 - "$nodes" "$ppn" "$np" <<'PY'
import re
import sys
from pathlib import Path
nodes, ppn, np = sys.argv[1:4]
path = Path("qsub_mpi.sh")
lines = path.read_text(encoding="utf-8").splitlines()
out = []
changed_nodes = False
changed_np = False
for line in lines:
    if line.startswith("#PBS -l nodes="):
        out.append(f"#PBS -l nodes={nodes}:ppn={ppn}")
        changed_nodes = True
    elif "/usr/local/bin/mpiexec" in line and " -np " in line:
        out.append(re.sub(r"(-np\s+)\d+", rf"\g<1>{np}", line))
        changed_np = True
    else:
        out.append(line)
if not changed_nodes:
    raise SystemExit("qsub_mpi.sh has no '#PBS -l nodes=' line")
if not changed_np:
    raise SystemExit("qsub_mpi.sh has no mpiexec -np line")
path.write_text("\n".join(out).rstrip() + "\n", encoding="utf-8")
PY
}

summary_lines() {
    if [ -f files/mpi_results/exp_logs/summary.csv ]; then
        wc -l < files/mpi_results/exp_logs/summary.csv
    else
        echo 0
    fi
}

job_state() {
    local job_id="$1"
    local state=""
    state=$(qstat -f "$job_id" 2>/dev/null | awk -F= '/job_state/ {gsub(/[[:space:]]/, "", $2); print $2; exit}')
    if [ -n "$state" ]; then
        echo "$state"
        return 0
    fi
    state=$(qstat "$job_id" 2>/dev/null | awk 'NR>2 && $1 !~ /^-/ {print $5; exit}')
    if [ -n "$state" ]; then
        echo "$state"
        return 0
    fi
    return 1
}

wait_for_output_files() {
    local elapsed=0
    while [ "$elapsed" -lt 90 ]; do
        if [ -f test.o ] && [ -f test.e ]; then
            return 0
        fi
        sleep 3
        elapsed=$((elapsed + 3))
    done
    return 0
}

wait_job() {
    local job_id="$1"
    local elapsed=0
    local state=""
    while true; do
        if ! state=$(job_state "$job_id"); then
            echo "job=${job_id} no longer appears in qstat; assuming finished"
            wait_for_output_files
            return 0
        fi
        if [ "$state" = "C" ] || [ "$state" = "E" ]; then
            echo "job=${job_id} state=${state}; treating as finished"
            wait_for_output_files
            return 0
        fi
        if [ "$elapsed" -ge "$MAX_WAIT_SECONDS" ]; then
            echo "ERROR: job ${job_id} still not finished after ${MAX_WAIT_SECONDS}s, current state=${state}."
            echo "Check with: qstat -u ${USER}"
            echo "If it is deadlocked, delete it with: qdel ${job_id}"
            return 1
        fi
        echo "waiting job=${job_id} state=${state} elapsed=${elapsed}s"
        sleep "$SLEEP_SECONDS"
        elapsed=$((elapsed + SLEEP_SECONDS))
    done
}

check_test_error() {
    local file="$1"
    if [ ! -f "$file" ]; then
        echo "ERROR: $file not found"
        return 1
    fi
    if grep -E "Segmentation fault|MPI_ABORT|No such file|No such file or directory|Permission denied|cannot access|core dumped" "$file" >/dev/null 2>&1; then
        echo "ERROR: fatal pattern found in $file"
        grep -nE "Segmentation fault|MPI_ABORT|No such file|No such file or directory|Permission denied|cannot access|core dumped" "$file" || true
        return 1
    fi
    return 0
}

if [ "$MPI_NP_RUN" -gt $((PBS_NODES_RUN * PBS_PPN_RUN)) ]; then
    echo "ERROR: MPI_NP_RUN=${MPI_NP_RUN} exceeds PBS_NODES_RUN*PBS_PPN_RUN=$((PBS_NODES_RUN * PBS_PPN_RUN))"
    exit 2
fi
if [ "$PBS_NODES_RUN" -gt 4 ] || [ "$PBS_PPN_RUN" -gt 8 ]; then
    echo "ERROR: PBS_NODES_RUN must be <=4 and PBS_PPN_RUN must be <=8"
    exit 2
fi
if grep -v '^[[:space:]]*#' qsub_mpi.sh | grep -q "/ntt/"; then
    echo "ERROR: qsub_mpi.sh active commands still contain /ntt/."
    exit 1
fi
if ! grep -v '^[[:space:]]*#' qsub_mpi.sh | grep -q "/ann/"; then
    echo "ERROR: qsub_mpi.sh active commands do not contain /ann/."
    exit 1
fi

mkdir -p files/mpi_results/exp_logs files/mpi_results/run_outputs
rm -rf files/mpi_results/report_tables

OUT_O="files/mpi_results/run_outputs/${LABEL}.test.o"
OUT_E="files/mpi_results/run_outputs/${LABEL}.test.e"
if [ "$SKIP_EXISTING" = "1" ] && [ -f "$OUT_O" ] && [ -f "$OUT_E" ]; then
    echo "SKIP: existing outputs found for ${LABEL}"
    echo "  $OUT_O"
    echo "  $OUT_E"
    exit 0
fi

echo "===== compile MPI main ====="
mpic++ main.cc -o main -O2 -fopenmp -lpthread -std=c++11 -DANN_ENABLE_MPI
if [ "$?" -ne 0 ]; then
    echo "ERROR: compile failed"
    exit 2
fi

set_config \
    ANN_ALGO="$ANN_ALGO_RUN" \
    ANN_THREADS="$ANN_THREADS_RUN" \
    ANN_P="$ANN_P_RUN" \
    ANN_NLIST="$ANN_NLIST_RUN" \
    ANN_NPROBE="$ANN_NPROBE_RUN"
set_qsub "$PBS_NODES_RUN" "$PBS_PPN_RUN" "$MPI_NP_RUN"

rm -f test.o test.e
before_lines=$(summary_lines)

echo "================================================================"
echo "CASE ${LABEL}"
echo "algo=${ANN_ALGO_RUN} threads=${ANN_THREADS_RUN} nlist=${ANN_NLIST_RUN} nprobe=${ANN_NPROBE_RUN} nodes=${PBS_NODES_RUN} ppn=${PBS_PPN_RUN} np=${MPI_NP_RUN}"
echo "================================================================"
echo "----- current run_config.txt -----"
grep -E "^ANN_(ALGO|THREADS|P|NLIST|NPROBE)=" files/configs/run_config.txt || true
echo "----- current qsub_mpi.sh key lines -----"
grep -E "^#PBS -l nodes=|mpiexec -np" qsub_mpi.sh || true

job_id=$(qsub qsub_mpi.sh | tr -d '[:space:]')
if [ -z "$job_id" ]; then
    echo "ERROR: qsub failed or returned empty job id"
    exit 3
fi
echo "submitted job_id=${job_id}"

if ! wait_job "$job_id"; then
    exit 4
fi

if [ -f test.o ]; then cp -f test.o "$OUT_O"; else echo "WARNING: test.o not found"; fi
if [ -f test.e ]; then cp -f test.e "$OUT_E"; else echo "WARNING: test.e not found"; fi

if ! check_test_error test.e; then
    if [ "$STRICT" = "1" ]; then
        exit 5
    fi
fi

after_lines=$(summary_lines)
if [ "$after_lines" -le "$before_lines" ]; then
    echo "ERROR: summary.csv was not appended. before=${before_lines}, after=${after_lines}"
    echo "----- tail test.o -----"
    [ -f test.o ] && tail -n 80 test.o || true
    echo "----- tail test.e -----"
    [ -f test.e ] && tail -n 120 test.e || true
    exit 6
fi

rm -rf files/mpi_results/report_tables

echo "----- last summary row -----"
tail -n 1 files/mpi_results/exp_logs/summary.csv
echo "saved outputs:"
echo "  $OUT_O"
echo "  $OUT_E"
echo "DONE: np=16 pure-MPI IVF experiment finished."
