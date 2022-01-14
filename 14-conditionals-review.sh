#!/bin/bash

# https://www.baeldung.com/linux/conditional-expressions-shell-script
grep -q "export ROOT_ENV_DIR=/home/vanely/TestDir" ~/.profile && echo "It's in there" ||  echo "Not in there"

# can break up the lines like this
grep -q "export ROOT_ENV_DIR=/home/vanely/TestDir" ~/.profile \ 
&& echo "It's in there"\
||  echo "Not in there"  
