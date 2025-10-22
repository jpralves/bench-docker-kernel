#!/bin/bash

start_timer() {
  echo "Started"
  start_time=$(date +%s.%N)
}

show_timer_reset() {
  end_time=$(date +%s.%N)
  duration=$(echo "$end_time - $start_time" | bc)
  start_time=$(date +%s.%N)
  echo "The command $1 took $duration seconds"
}

start_timer

tar xf *xz --strip-components=1

cp kernel.config .config

show_timer_reset "extraction of tar"

make -j$(nproc)

show_timer_reset "make -j$(nproc)"
