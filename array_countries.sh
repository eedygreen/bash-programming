#! /bin/bash

# You are given a list of countries, each on a new line. Your task is to read them into an array and \
# then transform them in the following way:
# The first capital letter (if present) in each element of the array should be replaced with a dot ('.'). 
# Then, display the entire array with a space between each country's names.

# the best case
countries=($(cat "$@"))
echo "${countries[*]/[A-Z]/ .}"

# with whileloop, this is the good case and using forloop is the wors case

countries=()

while read -r input
do
    countries=(${countries[*]} $input)
done
declare -a display_countries=( "${countries[*]/[A-Z]/.}" )
echo "${display_countries[*]}"