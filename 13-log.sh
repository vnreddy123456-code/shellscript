#!/bin/bash
# This script demonstrates the use of logging in Bash.

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "Please run this script as sudo user"
    exit 1
fi

mkdir -p ${logs_folder}

echo "script starting time: $(date +"%F %T")" &>> ${logs_file}

install_package() {
    package_name=$1
    dnf install $package_name -y &>> ${logs_file}
    if [ $? -eq 0 ]; then
        echo "$package_name installed successfully" &>> ${logs_file}
    else
        echo "$package_name installation failed" &>> ${logs_file}
        exit 1
    fi
}

install_package htop
install_package mysql

echo "script ending time: $(date +"%F %T")" &>> ${logs_file}

