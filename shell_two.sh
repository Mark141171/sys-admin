#!/bin/bash

# $0 --> The filename of the script
# $# --> The number of arguments that the script takes
# $1..$n --> Individual script arguments

# What is the filename?
ourfilename=$0
echo $ourfilename

# How many arguments was the script called with?
num_arguments=$#

# What were the arguments?
echo "The first three arguments were ${1}, ${2}, and ${3}"
echo "The total number of arguments was ${#}"