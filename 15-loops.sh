#!/bin/bash
# This script demonstrates the use of loops in Bash.

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "Please run this script as sudo user"
    exit 1
fi  

mkdir -p ${logs_folder}

echo "script starting time: $(date +"%F %T")" &>> ${logs_file}

validate() {
   if [ $1 -eq 0 ]; then
       echo "${2}...SUCCESS" &>> ${logs_file}
   else
       echo "${2}...FAILED" &>> ${logs_file}
       exit 1
   fi

}  

for package in $@
do
    echo "Going to install $package" &>> ${logs_file}
    dnf install $package -y &>> ${logs_file}
    validate $? "Installing ${package}"
done
