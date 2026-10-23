#!/bin/bash
# This script is used to demonstrate a simple shell script call one script to another.

prasent_country="India"

echo "The present country is: $prasent_country"
echo "PID of $0: $$"

#sh 21-script-2.sh
source ./21-script-2.sh