#!/bin/bash
# https://www.shellscript.sh/loops.html

# *(wild card) alone represents current dir
# for i in *
# do 
#  echo 'dir content'
# done 


# for loops will loop for the set of values separated by spaces passed after 'in'
for i in 1 2 3 4 5
do
  echo "Looping number $i"
done

# while loops will continue to loop until it's condition for looping becomes false
INPUT_STRING=''

# wrap variable reference in quotes to allow for spaces in input
# whatever is inside of [](square brackets) resolves to a conditional boolean value
while [ "$INPUT_STRING" != "bye" ]
do
  echo -n "Enter some text ('bye' to quit): "
  read INPUT_STRING
  echo "You typed $INPUT_STRING"
done
#----------------------------------------------------------------------------------
echo "============================"
echo "     Entering new Loop"
echo "============================"

# the :(colon) is a truthy value and if put at the end of a while loop results in an infinite loop
NEW_STRING_INPUT=''

while :
do 
  echo -n "Enter some text(^C to quit): "
  read NEW_STRING_INPUT
  echo "You typed $NEW_STRING_INPUT"
done