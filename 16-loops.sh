#!/bin/bash
# This script demonstrates the use of loops with console & file outputin Bash.

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "Please run this script as sudo user"
    exit 1
fi

mkdir -p ${logs_folder}

echo "script starting time: $(date +"%F %T")" | tee -a ${logs_file}

validate() {
   if [ $1 -eq 0 ]; then
       echo "${2}...SUCCESS" | tee -a ${logs_file}
   else
       echo "${2}...FAILED" | tee -a ${logs_file}
       exit 1
   fi

}   

for package in $@
do
    dnf list installed $package &>> ${logs_file}
    if [ $? -eq 0 ]; then
        echo "$package is already installed...SKIPPING." | tee -a ${logs_file}
        continue
    fi
    echo "Going to install $package" | tee -a ${logs_file}
    dnf install $package -y | tee -a ${logs_file}
    validate $? "Installing ${package}"
done
echo "script ending time: $(date +"%F %T")" | tee -a ${logs_file}

