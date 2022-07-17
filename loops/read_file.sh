#! /bin/bash

echo -e "Enter the file name: \c"

read -r file_name
# good practice to read file is to use Internal Field Separator 'IFS'

while IFS= read -r line # use IFS=' ' to explicit specify the white space separator
do
    echo "$line"
done < "$file_name"