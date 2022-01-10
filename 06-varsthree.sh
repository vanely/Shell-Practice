#!/bin/bash
# https://www.shellscript.sh/variables3.html

# ':-' is used to set a default value if a variable is unset
# ':=' can equally be used to set a default value if a variable is undefined
echo -n "What is your name?: "
read -r name
echo
echo "Your name is ${name:-$(whoami)}"