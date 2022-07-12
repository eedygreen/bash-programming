#! /bin/bash

echo -e "Enter sume numbers: \c"

# numbers=("$@")

# echo "$(( ${numbers[0]} + ${numbers[1]} ))"

IFS= read -a numbers

for i in $numbers[@]; do
    let sum+=$i
done
 echo "The sum of the number you entered is: $sum"