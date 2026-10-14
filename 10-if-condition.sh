#!/bin/bash
#This script demonstrates the use of if condition in Bash.

echo "Enter the marks:"
read marks

#less than
if [ $marks -lt 33 ]; then
    echo "Fail"
elif [ $marks -lt 50 ]; then
    echo "Third Class"
elif [ $marks -ge 60 ]; then
    echo "Second Class"
elif [ $marks -ge 75 ]; then
    echo "First Class"
else
    echo "Distinction"
fi
#greater than or equal to
if [ $marks -ge 90 ]; then
    echo "You are a topper"
elif [ $marks -ge 80 ]; then
    echo "You are a good student"
elif [ $marks -ge 70 ]; then
    echo "You are an average student"
elif [ $marks -ge 60 ]; then
    echo "You are a below average student"
elif [ $marks -ge 50 ]; then
    echo "You are a poor student"
elif [ $marks -ge 40 ]; then
    echo "You are a very poor student"    
else
    echo "You are a very poor student"    
fi