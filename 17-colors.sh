#!/bin/bash
# This script demonstrates the use of colors in Bash.
user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
N="\e[0m" # No Color
Y="\e[33m"

if [ $user_id -ne 0 ]; then
    echo -e "${R}You must run this script as root.${N}"
    exit 1
fi  

mkdir -p $logs_folder

echo "Script started at $(date)" >> $logs_file

for package in $@
do
    dnf list installed $package &>> $logs_file 
    if [ $? -ne 0 ]; then
        echo "Going to install ${package}..."
        dnf install -y $package &>> $logs_file
        validate_input $? "Installing ${package}"
    else
        echo -e "${package} already installed...${Y}SKIPPING.${N}"
    fi
done




validate_input() {
    if [$1 -ne 0]; then
        echo -e "${2}..${R}FAILED.${N}" | tee -a $logs_file
    else
        echo -e "${2}..${G}SUCCESS${N}" | tee -a $logs_file
    fi
}


