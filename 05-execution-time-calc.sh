#!/bin/bash
# This script is to demonstrate the use of command  output store into variable.

start_time=$(date +%s)
echo "Start Time : $start_time"
sleep 5
end_time=$(date +%s)
echo "End Time : $end_time"
execution_time=$((end_time - start_time))
echo "Execution Time : $execution_time seconds"

