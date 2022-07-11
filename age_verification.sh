#! /bin/bash

echo -e "Enter your age: \c"

IFS=read -r your_age

if [ "$your_age" -gt 16 ] && [ "$your_age" -lt 25 ]
then
    echo "You are an adult!"
else
    echo "Not a valid age"
fi