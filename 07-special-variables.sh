#!/bin/bash
# This script demonstrates the use of special variables in Bash.
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"
echo "Realpath: $(realpath $0)"
echo "Who is running current script: $USER"
echo "Directory of the current script: $PWD"
echo "home directory of the current user: $HOME"
echo "PID of the current script: $$"
sleep 5 &   
echo "PID of the last background command: $!"
wait $!
echo "Exit status of the last command: $?"
echo "Total time taken to execute the script: $SECONDS seconds"