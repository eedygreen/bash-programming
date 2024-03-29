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

# Given a list of countries, each on a new line, your task is to read them into an array. 
# Then, concatenate the array with itself (twice) - 
# so that you have a total of three repetitions of the original array - 
# and then display the entire concatenated array, with a space between each of the countries' names.

ctry=($(cat))
ctry=${ctry[*]}
echo "$ctry $ctry $ctry"

ctr=()
while read -r countries
do 
    ctr+=($countries)
done
echo  "${ctr[*]}"

countries=( $(cat) )
echo "${countries[*]:3:5}"  # starts at 3rd element and stops at 7th elements. from 3rd, 4th, 5th, 6th, & 7th equals 5

# You are given a list of countries, each on a new line. Your task is to read them into an array and 
# then filter out (remove) all the names containing the letter 'a' or 'A'.

ctries=( $(cat))
echo "${ctries[*]/*[aA]*/}"  # this should work but it has empty spaces

# reomve the spaces

echo "${ctries[*]/*[aA]*/}" | sed "s/^\s*//g"