#!/bin/bash
# This script demonstrates the use of logging in Bash.

user_id=$(id -u)
log-folder="/var/log/shell-scripts"
log-file="${log-folder}/$(basename $0).log"

if [ $user_id -ne 0 ]; then
    echo "Please run this script as sudo user"
    exit 1
fi

mkdir -p ${log-folder}

echo "script starting time: $(date %F %T)" &>> ${log-file}

install_package() {
    package_name=$1
    dnf install $package_name -y &>> ${log-file}
    if [ $? -eq 0 ]; then
        echo "$package_name installed successfully" &>> ${log-file}
    else
        echo "$package_name installation failed" &>> ${log-file}
        exit 1
    fi
}

install_package htop
install_package mysql

echo "script ending time: $(date %F %T)" &>> ${log-file}

