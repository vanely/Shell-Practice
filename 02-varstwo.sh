#!/bin/bash
# https://www.shellscript.sh/variables1.html
# https://www.shellscript.sh/variables2.html

# '$#' built in variable returns the number of parameters this script was called with
echo "This script was called with $# parameters!"

# '$0' built in variable returns the name of the current script that is running
echo "The name of this script is: $0"

# every number after '0' EX: '$1 ...' is the parameter called with the script at the given index/ position
echo "The first parameter this script was called with is: $1"
echo "The second parameter this script was called with is: $2"

# $@ list all the parameters that the script was called with, omitting the script name
# to prevent merging the output with stings us $*
echo "The script was called with the following parameters: $*"


# to take more than 9 parameters we use the 'shift' command
echo
while [ "$#" -gt "0" ]
do
  echo "\$1 is $1"
  shift
done

# the '$?' contains the exit value/code of the last run command
echo
if [ "$?" -ne "0" ]
then
  echo "Something went wrong while running this script: $0"
else
  echo "Script: $0 ran successfully =)"
fi

# '$$' built in variable outputs the process ID of the currently running shell script
echo "Process ID of the current running shell script: $$"

# '$!' built in variable outputs the process ID of the last background running process
echo "Process ID of last background running process: $!"