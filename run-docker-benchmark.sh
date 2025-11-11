#!/bin/bash

set -euo pipefail

echo "Building..."
docker build src/ -t bench-kernel

echo "Executing..."
tmpfile=$(mktemp)
docker run --rm bench-kernel | tee "$tmpfile"

execution_time=$(grep "The command make" < "$tmpfile" | sed 's/^The command make .* took \([0-9]*\)\..*/\1/g')
processor="$(grep "model name" < /proc/cpuinfo | uniq | sed -E 's/.*: (.*)/\1/g')"
cores="$(nproc)"
memory="$(echo "$(grep "MemTotal" < /proc/meminfo | sed -e 's/.*:\s*\(.*\) kB/\1/g') / (1024*1024)" | bc)"
now_date="$(date --iso-8601)"
source /etc/os-release
os="${NAME:-Unknown} ${VERSION_ID:-}"
kernel_version="$(uname -r | sed 's/^\([0-9.]*\).*/\1/')"
rm -f "$tmpfile"

cat <<EOF

---- Results:
Processor: $processor
Cores/Threads: $cores
Memory: ${memory}GB
Date: $now_date
OS: $os
Kernel: $kernel_version
Execution time: ${execution_time}s

EOF
