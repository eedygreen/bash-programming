#! /bin/bash

echo -e "Enter the age number: \c"

IFS= read -r age

# The untill loop is the same as while loop but it operates with the condition of false
# and stops when the condition is true

until [[ "$age" -lt 10 ]] # if age is greater than 10
do 
    echo "If the number you entered is greater than 10: $age"
    (( age-- ))
done

until [[ "$age" -gt 10 ]] # if age is less than 10
do 
    echo "If the number you entered is less than 10: $age"
    (( age++ ))
done