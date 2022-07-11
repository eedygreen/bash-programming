#! /bin/bash

echo -e "Enter your age: \c"

read age

if [ "$age" -gt 16 ] && [ "$age" -lt 25 ]
then
    echo "You are an adult!"
else
    echo "Not a valid age"
fi