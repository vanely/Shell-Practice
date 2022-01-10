#!/bin/sh

# $@ represents all arguments passed after the script name during execution
# $0 represents the first arg which is the name of the script during execution
# $1, $2, etc... represent the following args respectively
ARG_ONE=$1
# -n allows us to print text without a new line
echo "What is your name $ARG_ONE:"
# read is used to request user input
read -r NAME
# use curly braces to concat strings to variable names without tampering with variable name
echo "Hello there ${NAME}_concat nice to meet you!"
