#!/bin/bash
# This script demonstrates the use of if condition  in Bash.

user_id=$(id -u)
if [ $user_id -ne 0 ]; then
    echo "Please run this script as sudo user"
    exit 1
fi 

echo "proceeding with the installation..."
dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "nginx installed successfully"
else
    echo "nginx installation failed"
    exit 1
fi

dnf install mysql -y
if [ $? -eq 0 ]; then
    echo "mysql installed successfully"
else
    echo "mysql installation failed"
    exit 1
fi  

echo "Installation completed successfully"

echo "Still proceeded........"
