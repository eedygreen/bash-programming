#! /bin/bash

echo -e "Enter the numbers: \c"

read -ra numbers

# sum the first two indexes

echo "${numbers[0]}+${numbers[1]}" | bc # with bc, floating point can be calculated

# subtract the frist two indexes

echo "${numbers[0]}-${numbers[1]}" | bc

# multiply the first two indexes

echo "${numbers[0]}*${numbers[1]}" | bc

# Divide the first two indexes

echo "${numbers[0]}/${numbers[1]}" | bc

# find the reminder of the first two indexes

echo "scale=2;${numbers[0]}%${numbers[1]}" | bc

# bc library, flag -l

echo "scale=2;sqrt(${numbers[0]})" | bc -l

echo "The power of the two first indexes"
echo "scale=2;${numbers[0]}^${numbers[1]}" | bc -l
