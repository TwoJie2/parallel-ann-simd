# ANN MPI 云端上传包使用说明

本包用于覆盖云端 `/home/s2412677/ann` 中的 MPI-IVF 相关文件，并自动完成一次 `mpic++` 编译、`qsub_mpi.sh` 提交、结果收集和报告片段生成。

## 1. 上传位置

把整个压缩包上传到云端：

```text
/home/s2412677/ann_mpi_upload_s2412677.zip
```

然后在云端执行：

```bash
cd /home/s2412677/ann
unzip -o /home/s2412677/ann_mpi_upload_s2412677.zip
chmod +x qsub_mpi.sh run_mpi_ivf_once.sh
```

如果云端还没有 `/home/s2412677/ann` 目录，需要先把完整 ANN 项目放到该目录。本上传包不是完整项目，只包含本次 MPI-IVF 需要覆盖或新增的文件。

## 2. 包内文件

```text
main.cc
ann_mpi_common.h
ann_mt_common.h
files/configs/run_config.txt
qsub_mpi.sh
run_mpi_ivf_once.sh
README_MPI_UPLOAD.md
```

其中：

- `main.cc`：包含 `ANN_ENABLE_MPI` 下的 MPI-IVF 搜索路径。
- `ann_mpi_common.h`：MPI 分片、候选结果和 top-k merge 辅助逻辑。
- `ann_mt_common.h`：日志与结果目录逻辑，MPI 结果写入 `files/mpi_results/`。
- `files/configs/run_config.txt`：当前实验配置，算法为 `mpi_ivf`，线程数为 `1`。
- `qsub_mpi.sh`：PBS 提交脚本，已按用户账号 `s2412677` 和项目目录 `/home/s2412677/ann` 配好。
- `run_mpi_ivf_once.sh`：自动检查、编译、提交、等待、收集和整理结果的脚本。

## 3. 一键运行

```bash
cd /home/s2412677/ann
./run_mpi_ivf_once.sh
```

默认最多等待 3600 秒。若只想等 20 分钟：

```bash
cd /home/s2412677/ann
MAX_WAIT_SECONDS=1200 ./run_mpi_ivf_once.sh
```

## 4. 本次脚本参数

`qsub_mpi.sh` 使用：

```text
nodes=2
ppn=4
np=8
```

当前配置 `ANN_THREADS=1`，所以是纯 MPI-IVF，每个 MPI 进程占一个核心，满足 `np = nodes × ppn`。

## 5. 成功后检查文件

成功后重点看：

```text
files/mpi_results/exp_logs/summary.csv
files/mpi_results/exp_logs/platform.txt
files/mpi_results/run_outputs/mpi_ivf.test.o
files/mpi_results/run_outputs/mpi_ivf.test.e
files/mpi_results/report_tables/mpi_ivf_report_snippet.md
files/mpi_results/mpi_ivf_results_to_send.tgz
```

把 `files/mpi_results/mpi_ivf_results_to_send.tgz` 发给后续 GPT/agent 即可。如果不方便下载压缩包，就直接复制下面四个文件内容：

```text
files/mpi_results/exp_logs/summary.csv
files/mpi_results/exp_logs/platform.txt
files/mpi_results/run_outputs/mpi_ivf.test.o
files/mpi_results/run_outputs/mpi_ivf.test.e
```

## 6. 如果卡住

查看任务：

```bash
qstat -u s2412677
```

如果长时间无输出，可能是死锁或队列资源不足。确认死锁后删除：

```bash
qdel <JOB_ID>
```

## 7. 注意

不要用旧的 `qsub.sh` 跑 MPI。本次必须用：

```bash
mpic++ main.cc -o main -O2 -fopenmp -lpthread -std=c++11 -DANN_ENABLE_MPI
qsub qsub_mpi.sh
```

上面两步已经由 `run_mpi_ivf_once.sh` 自动完成。
