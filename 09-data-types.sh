#!/bin/bash
# This script demonstrates the use of data types in Bash.

var1=10
var2=20
var3="Hello"

echo "Integer addition: $((var1 + var2))"
echo "String concatenation: $var3 World"    
echo "String concatenation: ${var3} World" 


declare -i count=5
count=count+1
echo "Count is : $count"

FRUITS=("apple" "banana" "cherry")
echo "All fruits: ${FRUITS[@]}"
echo "First fruit: ${FRUITS[0]}"
echo "Second fruit: ${FRUITS[1]}"
echo "Third fruit: ${FRUITS[2]}"

name="John"
echo "Name: ${name} Deo"
