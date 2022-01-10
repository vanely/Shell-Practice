#!/bin/bash
# https://www.shellscript.sh/case.html

# switch case
echo "script PID: $$"
rand_var='word'

case $rand_var in
  'palavra')
    echo "'rand_var' contains 'palavra" ;;
  'word')
    echo "'rand_var' contains 'word'" ;;
  *)
    echo "'rand_var' contains $rand_var" ;;
esac # conditions end with the opposite spelling of the conditional keyword

# now let's put the switch case in an infinite loop to keep getting some input from the user
echo
echo "Come talk to me. Type 'exit' to end."
echo
while : # ':' evaluates to true
  do
  read input
  case "$input" in
    "hello")
      echo "Well hello to you too! =).";
      echo ;;
    "bye")
      echo "See ya later!";
      sleep 2 # 'sleep' command waits for the given amount of time before executing the following lines
      echo "Just kidding, haha XD, still here!"
      echo ;;
    "exit")
      exit ;; # 'exit' command exits the script
    *)
      echo "Not sure how to respond to: '${input}'"; 
      echo ;;
  esac
done