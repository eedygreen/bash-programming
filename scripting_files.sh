#! /bin/bash


# this script checks for a valid file and permission and append the text to the file

echo -e "Enter the name of the file: \c"

read file_name

if [ -f $file_name ]
then
    if [ -w $file_name ]
    then
        echo -e "Enter the texts or press ctrl + d to quit: \c"
        cat >> $file_name
    else
        echo "the file does not have a write permission"
    fi
else
    echo "its not a valid file"
fi