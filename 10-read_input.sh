#!/bin/bash

# other ways to get user input https://linuxhint.com/create-menu-bash-script/

input_one() {
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
}

# script has to be run with #!/bin/basbash for the following code to execute successfully
input_two() {
  arr=(
    "Create Directories"
    "Update Directories"
    "Clean Up"
    "Install Programs"
  )
  # reads user input like the 'read' command
  PS3="Enter something random: "
  # generates an ordered list from an array
  select i in "${arr[@]}"
  do
    echo "i: ${i}"
    # REPLY stores the number of the item in the ordered list
    echo "You entered : ${REPLY}"
  done
}

input_two