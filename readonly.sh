#! /bin/bash

# readonly command is used to make variable or function not overwriten

# varaible 
readonly var=10
echo "$var"

try_it() {
    echo "Just testing readonly"
}

# use -f for functions
readonly -f try_it

# with readonly this function can be called but cannot be overwritten
try_it

# this will throw an error: readonly function
# try_it() {
#     echo "testing to see if it works"
# }

readonly        # this will print out the readonly variables. readonly -p is same as readonly
readonly -f     # this will print out the successful readonly functions