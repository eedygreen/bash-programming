#! /bin/bash

# Given  integers, compute their average, rounded to three decimal places.

# Input Format
# The first line contains an integer, .
# Each of the following  lines contains a single integer.

# Output Format
# Display the average of the  integers, rounded off to three decimal places.

# Input Constraints

# ( refers to elements of the list of integers for which the average is to be computed)

IFS=" " read -r num_of_lines        # number of lines as the total number of give integers
items=( $(cat) )                    # this will pass all the input in an arrary

printf "%.3f \n" "$(echo "scale=4;$((${items[*]/%/ +}0))"/"$num_of_lines" | bc )"