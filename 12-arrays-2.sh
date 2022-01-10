#!/bin/bash

# space separated elements in array
SOME_ARR=("one" "two" "three")
SOME_ARR_LEN="${#SOME_ARR[@]}"

# print all elements in an array: "${SOME_ARR[@]}"
# to avoid mixing strings and the array, use "${SOME_ARR[*]}"
echo "All elements in array:  [ ${SOME_ARR[*]} ]"
echo
echo "Elements in array referenced by index: [ ${SOME_ARR[0]}, ${SOME_ARR[1]}, ${SOME_ARR[2]}, ]"

# looping through elements of array
for item in "${SOME_ARR[@]}"
do
  echo "item from in loop: ${item}"
done

echo

for (( i=0; i<"${SOME_ARR_LEN}"; i++ ))
do
  echo "item from incremental loop: ${SOME_ARR[i]}"
done

echo
# text can be iterated over as if a space separated array
NORMAL_TEXT="some random text"

# if variable is double quoted, split won't occur EX: "${NORMAL_TEXT}"
for word in ${NORMAL_TEXT}
do
  echo "Word in text: ${word}"
done

echo
#################### Other Array Creation Approaches ####################
# For bash 4.x, must not be in posix mode, may use temporary files
mapfile -t array < <(git --version)
echo "${array[@]}"

# For bash 3.x+, must not be in posix mode, may use temporary files
array2=()
while IFS='' read -r line; do array2+=("$line"); done < <(git --version)
echo "${array2[@]}"
