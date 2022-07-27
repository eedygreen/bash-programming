#! /bin/bash

# display the lines (from line number 12 to 22, both inclusive) of a given text file.

# best case

head -n 22 | tail -n +12

# second best case
touch file
head -n 22 file >> file_1
tail -n 11 file_1

# third worst case
for ((n=0; n<=22; n++))
do
    read 

    if [ $n >= 12 ] 
    then
        echo ${REPLY}
    fi
done