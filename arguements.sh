#! /bin/bash

# arguements
# $0 is the name of the script
# $1 the first arguement, $2 the second arguement and so on so fourth

echo $0 $1 $2 '> echo  $0 $1 $2'

# array of arguements

args=("$@")

# indexing 
# echo ${args[0]}, ${args[1]}  # this style is useful for few known argeuments

echo $@

# to count the number of arguemnents

echo $#

