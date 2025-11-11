# Benchmarks

This benchmark uses a rockylinux/rockylinux:9.6 image with compiling tools to build a kernel.

# How to use

Run the command: `./run-docker-benchmark.sh`

This will build, execute kernel compilation and show the stats and results.
It should be running with minimal applications running and with performance governor activated and with power pluged-in.

Note: This script does not install any packages in the machine.

# Results

Some benchmarks (using rockylinux/rockylinux:9.6 - gcc 11.5.0):

| Machine | Processor | C/T | Memory | Host OS | Kernel | Date | Comp. Time |
| --- | --- | --- | --- | --- | --- | --- | ---: |
| ASUS PRIME B650M-A II | AMD Ryzen 7 7700 8-Core Processor | 16 | 32GB | Fedora Linux 42 | 6.16.12 | 2025-10-22 | 102s |
| ROG STRIX X299-E GAMING II | Intel(R) Core(TM) i9-10980XE CPU | 36 | 64GB | Ubuntu 24.04 | 6.8.0 | 2025-11-11 | 103s |
| NP6_7xRZ | 13th Gen Intel(R) Core(TM) i7-13700H | 20 | 64GB | Ubuntu 24.04 | 6.8.0 | 2025-11-11 | 129s |
| Framework 13 | AMD Ryzen AI 5 340 w/ Radeon 840M | 12 | 32GB | Fedora Linux 42 | 6.17.4 | 2025-10-22 | 143s |
| Lenovo Legion 5 | AMD Ryzen 7 4800H with Radeon Graphics | 16 | 32GB | Arch Linux | 6.17.3 | 2025-10-22 | 176s |
| Lenovo Ideapad 1 | AMD Ryzen 7 5700U with Radeon Graphics | 16 | 16GB | Fedora Linux 42 | 6.17.4 | 2025-10-22 | 225s |
| Lenovo ThinkPad E14 G5 | AMD Ryzen 5 7530U with Radeon Graphics | 12 | 40GB | Fedora Linux 42 | 6.17.4 | 2025-11-05 | 235s |
| UGREEN NAS DXP4800Plus | Intel(R) Pentium(R) Gold 8505 | 6 | 16GB | Fedora Linux 42 | 6.16.11 | 2025-10-22 | 386s |
| Lenovo Thinkpad L14 G3 | 12th Gen Intel(R) Core(TM) i7-1255U | 12 | 32GB | Red Hat Enterprise Linux 9.6 | 5.14.0 | 2025-10-22 | 446s |
| ? | Intel(R) N100 | 4 | 16GB | Fedora Linux 42 | 6.16.12 | 2025-10-22 | 558s |
| Clevo | Intel(R) Core(TM) i5-8250U CPU | 8 | 16GB | Fedora Linux 42 | 6.17.4 | 2025-10-22 | 565s |
| Clevo N220WU | Intel(R) Core(TM) i7-8550U CPU | 8 | 32GB | Fedora Linux 42 | 6.16.12 | 2025-10-22 | 590s |

