#!/bin/bash
# This script is to demonstrate the use of input username and password.

echo "Enter your username : "
read -s username # -s option is used to hide the username input    
echo "Enter your password : "
read -s password # -s option is used to hide the password input

# Display the username and password for verification 
# note: In real world scenario we should not display the password in clear text.
echo "Your username is : $username"
echo "Your password is : $password"
