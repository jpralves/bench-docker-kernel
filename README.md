
Run the command: `./run-docker-benchmark.sh`

This will build, execute kernel compilation and show the stats and results.
It should be running with minimal applications running.

This script does not install any packages in the machine.

Some benchmarks:

| Processor | C/T | Memory | Host OS | Kernel | Date | Comp. Time |
| --- | --- | --- | --- | --- | --- | ---: |
| Intel(R) Core(TM) i7-8550U CPU | 8 | 32GB | Fedora Linux 42 | 6.17.4 | 2025-10-22 | 590s | 
| 12th Gen Intel(R) Core(TM) i7-1255U | 12 | 32GB | Red Hat Enterprise Linux 9.6 | 5.14.0 | 2025-10-22 | 446s |
| AMD Ryzen 7 4800H with Radeon Graphics | 16 | 32GB | Arch Linux | 6.17.3 | 2025-10-22 | 176s |
| AMD Ryzen 7 5700U with Radeon Graphics | 16 | 16GB | Fedora Linux 42 | 6.17.4 | 2025-10-22 | 225s |
| Intel(R) N100 | 4 | 16GB | Fedora Linux 42 | 6.17.4 | 2025-10-22 | 558s |
