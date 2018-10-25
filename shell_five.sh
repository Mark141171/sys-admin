#!/bin/bash

NUM_REQUIRED_ARGS=2
num_args=$#
# Do we have at least two arguments?
if [ $num_args -lt $NUM_REQUIRED_ARGS ]; then
    echo "Not enough arguments. Call this script with
    ${0} <name> <number>"
    exit 1
fi

# Set variables using arguments
name=$1
number=$2
echo "Your first two arguments were: $1 $2"

# For loops; iteration, string interpolation
echo "You ran this program with ${num_args} arguments. Here they are:"
for arg in "@"; do 
    echo "$arg"
done

# There are two ways of defining a function
spaced () {
    # parameters are not named; they are postiional
    echo
    echo "######################"
    echo "$1"
    echo "######################"
    echo
}

function javatest() {
    if [[ $number -eq 99 ]]; then
        spaced "You win. You guessed the secrest number!"
    elif (( $number < 10 )); then
        spaced "You're a courageous one. I like that about you. Unfortunately you must still DIE!"

    # set a variable interactively
    echo "Hi ${name}, to avert a horrible death, please enter the password:"
    read password

    if [[ "$password" != "Java" ]]; then
        spaced "Well, at least you're not a java programmer. You can go now."
    else
        spaced "DIE! Actually, nevermind. Writing jave is enough \ of a hellish punishement."
        fi 
    fi
}

javatest $number
exit 0