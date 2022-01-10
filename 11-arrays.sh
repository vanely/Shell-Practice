#!/bin/bash

# implicit string splitting
# quoting the var inside will avoid splitting into array. EX: "$(git --version)"
declare -a VERSION_ARRAY=($(git --version))

echo "Elements of implicitly split word array: [ ${VERSION_ARRAY[0]}," "${VERSION_ARRAY[1]}," "${VERSION_ARRAY[2]} ]"
#-------------------------------------------------------------------------

echo
# explicit string splitting
VAR="some string to split by spaces"

# where ARR is the variable that the stores that split string array
read -ra ARR -d '' <<< "${VAR}"

# prints all values in array
echo "All values in explicitly split word array: [ ${ARR[@]} ]"
# prints value at index
echo "Elements of explicitly split word array: [ ${ARR[0]}, ${ARR[1]}, ${ARR[2]}, ${ARR[3]}, ${ARR[4]}, ${ARR[5]},  ]"