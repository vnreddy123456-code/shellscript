#!/bin/bash
# This script demonstrates the use of functions in Bash.

user_id=$(id -u)
if [ $user_id -ne 0 ]; then
    echo "Please run this script as sudo user"
    exit 1
fi  

echo "script starting time: $(date)"

install_package() {
    package_name=$1
    dnf install $package_name -y
    if [ $? -eq 0 ]; then
        echo "$package_name installed successfully"
    else
        echo "$package_name installation failed"
        exit 1
    fi
}

install_package nginx
install_package mysql

echo "script ending time: $(date)"