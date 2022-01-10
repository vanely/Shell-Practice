#!/bin/sh
# https://www.shellscript.sh/functions.html

# this will read the contents of a file passed in at the end of the loop
# into variable 'f', file must end with new line for last line to be read
while read f
do
  # case/ switch case format
  case $f in
    hello)       echo English         ;;
    howdy)       echo American        ;;
    gday)        echo Australian      ;;
    bonjour)     echo French          ;;
    "guten tag") echo German          ;;
    *)           echo Unknow Lang: "$f" ;;
  esac
done < myfile.txt
