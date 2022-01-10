#!/bin/bash
# https://www.shellscript.sh/loops.html

# creating dirs and/ or files with looping.
for i in 0 1 2 3 4 S
do
  mkdir rc${i}.d
done

# this is equivalent to the above, but a more simple and elagent approach.
# NOTE: this approach only works if the execution shell is set to #!/bin/bash
mkdir rc{5,6,7,8,9,T}.d