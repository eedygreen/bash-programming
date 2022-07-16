#! /bin/bash

echo -e "Enter the number: \c"

read -r age
# while [condition]
# do
    # 
# done

while [ $age -le 18 ]
do
    echo "$age is a minor"
        (( ++age ))
done

while (( $age < 18 ))
do 
    echo "$age is minor"
    (( ++age ))
done