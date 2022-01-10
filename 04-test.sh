#!/bin/bash
# https://www.shellscript.sh/test.html

export foo

# because '[' is a command it should be surrounded by spaces -----------------------
if [ "$foo" = "bar" ]
then
  echo "Oh yeah 'foo' contains 'bar'"
elif [ "$foo" = "baz" ]
then
  echo "Yup 'foo' contains 'baz"
else
  echo "foo actually contains $foo"
fi

# shorthand if conditions, synonymous to ternary conditions ------------------------
echo 
file='./myfile.txt'
other_file='./mynewfile.ts'

[ -f "$file" ] && echo "yeah, $file is a file." || echo "nope, $file is not a file."

[ "$other_file" -nt "$file" ] && echo "$other_file is newer than $file."\
|| echo "$other_files is not newer than $file."

echo
# while loops ----------------------------------------------------------------------
input_text='placeholder'
while [ -n "$input_text" ]
do
  echo -n "Enter some text (RETURN to quit): "
  read input_text
  
  if [ -n "$input_text" ]
  then
    echo 
    echo "You entered: $input_text"
    echo
  fi
done