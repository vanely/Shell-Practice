#!/bin/bash

# 'adduser' command is used to add new user, or update existing user
# 'passwd' command is used to set a password for a new user, or update that of the current user
USR=$1
PASS=$2
COMMENTS=("$@")

add_a_user() {

  echo "Adding User: ${USR}..."
  sleep 2
  printf "Added user: %s ( %s ) with password %s: ." "${COMMENTS[@]}" "${PASS}"
}

# if variables are created inside of the function the parameters that become the variables values
# have to be passed to the function.
# for the function to consume the parameters that are passed to the script, the variables have
# to be outside of the function

# add_a_user

# function params/ arguments
# https://stackoverflow.com/questions/6212219/passing-parameters-to-a-bash-function
NAME="some possible human name"
AGE="integer overflow"

print_person_deets() {
  echo "Hello ${1}, I see here that your age is listed as: ${2}"
  echo "I am confusion!"
}

print_person_deets "${NAME}" "${AGE}"