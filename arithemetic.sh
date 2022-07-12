#! /bin/bash

echo -e "Enter sum numbers: \c"

# numbers=("$@")

# echo "$(( ${numbers[0]} + ${numbers[1]} ))"

read -ra numbers

# for i in ${numbers[@]}; do
#     (( sum_given_numbers+=$i ))
# done
# echo "The sum of the number you entered is: $sum_given_numbers"


 sum=$(IFS=+; echo "$((${numbers[*]}))")
 echo "The sum of the give numbers is: $sum"

# Addition
 echo "The sum of the give numbers is: $((${numbers[@]/%/ +}0))" #https://stackoverflow.com/questions/13635293/how-can-i-find-the-sum-of-the-elements-of-an-array-in-bash#:~:text=array%20elements%3A%206-,Explanation,-%3A
 
 # Subtraction
 echo "The subtraction of the given numbers is: $((${numbers[@]/%/ -}0))"
 
 # Multiplication
 echo "The product of the given numbers is: $((${numbers[@]/%/ *}1))"
 
 # Division
 echo "The difference of the given numbers is: $((${numbers[@]/%/ /}1))"