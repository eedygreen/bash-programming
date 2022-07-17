#! /bin/bash

echo -e "Enter the number: \c"

read -r age
# while [condition]
# do
    # 
# done

while [ "$age" -le 18 ] # added double quote to prevent globbing and word splitting
do
    echo "age $age is a minor"
        (( ++age ))
done