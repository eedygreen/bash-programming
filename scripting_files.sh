#! /bin/bash

echo -e "Enter the name of the file: \c"

read file_name

if [ -f $file_name ]
then
    echo "its a valid file"
else
    echo "its not a valid file"
fi