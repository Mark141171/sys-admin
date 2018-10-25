#!/bin/bash

NUM_REQUIRED_ARGS=2

# Do we have at least two arguments?
if [ $# -lt NUM_REQUIRED_ARGS ]; then
    echo "Not enough arguments. Call this script with ./{$0} <name> <number>"
    exit 1
fi

echo "Hi. " || echo "This won't happen."
$(ls noexistentfile) || echo "This happens if the first thing fails"
echo $(pwd) && echo "This ALSO happens!"

str1="a"
str2="b"

if [ "$str1" = "$str2" ]; then 
    echo "${str1} is equal to ${str2}"
fi

if [ "$str1" != "$str2" ]; then 
    echo "${str1} is not equal to ${str2}"
fi

# Null (-n) or Zero length (-z)
notnully="this is something (not nothing"
nully=""

if [ -n "$notnully" ]; then
    echo "This is not all nully"
fi

if [ -z "$nully"]; then
    echo "nully/zerooo (length)"
fi
# INTEGERS
# -gt greater than
# -eq equal to
# -ne not equal to 
# -lt less than
# -le less than or equal to
# -ge greater than or equal to 

int1=1
int2=7
if [ $int1 -eq $int2 ]; then
echo "${int1} is equal to ${int2}."
fi

if [ $int1 -ne $int2 ]; then
echo "${int1} is NOT equal to ${int2}."
fi

if [ $int1 -gt $int2 ]; then
echo "${int1} is greater than ${int2}."
fi

if [ $int1 -le $int2 ]; then
echo "${int1} is less than or equal to ${int2}."
fi

# String comparison can be used with double parenthesess
if (( $int1 == $int2 )); then
echo "${int1} is equal to ${int2}."
fi

# STRINGS
# (()) Conditions must be in double braces
# == Is equal to
# != Is not equal to
# < less than
# > greater than
# <= less then or equal to
# >= greater than or equal to