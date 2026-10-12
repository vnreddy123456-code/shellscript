#!/bin/bash
# this script is to demonstrate how to pass command line arguments to a shell script.

person_1=$1
person_2=$2
echo "$person_1 : Hi $person_2, How are you."
echo "$person_2 : Hello $person_1, I am fine, What About you."
echo "$person_1 : I am fine, Thank you for asking $person_2."

#Run the script as below
# sh ./04-commondline_args.sh Ramesh Suresh