#! /bin/bash

# functions notation

#1. function name(){
#    command
#}

#2. another notation to define a function

# name(){
# command
#}

function say_my_name(){
    local first_name=$1     # use local to define a local variable 
    local last_name=$2
    echo "The first name is $first_name and the last name is $last_name"
}

quit(){
    exit
}

# call the function with arguement
say_my_name $1 $2       # ./functions.sh eedy green

echo "Done"


quit