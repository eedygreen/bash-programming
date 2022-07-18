#! /bin/bash

# untill loop is the same as while loop but it operates with the condition of false
# and stops when the condition is true
echo -e "Enter the age number: \c"

IFS= read -r age

until (( $age < 10 )) # if age is greater than 10
do 
    echo $age
    (( age-- ))
done

until (( $age > 10 )) # if age is less than 10
do 
    echo "The age you entered is: $age"
    (( age++ ))
done