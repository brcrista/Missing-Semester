#!/usr/bin/env bash

last_status=0
num_runs=0

while [[ $last_status -eq 0 ]]; do
  bash "$1" >> /tmp/stdout.log 2>> /tmp/stderr.log
  last_status=$?
  (( num_runs += 1 ))
done

echo "Executing the command '$1' failed on run #$num_runs"
echo "STDOUT logs:"
cat /tmp/stdout.log

echo "STDERR logs:"
cat /tmp/stderr.log

rm /tmp/stdout.log /tmp/stderr.log
