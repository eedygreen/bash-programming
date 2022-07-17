#! /bin/bash

echo -e "Enter the file name: \c"

read file_name
# good practice to read file is to use Internal Field Separator 'IFS'

while IFS= read -r line
do
    echo $line
done < $file_name