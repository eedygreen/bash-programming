#! /bin/bash

# find a file

echo -e "Enter the file name: \c"

read file_name
if [ -e $file_name ] # flag -e checks if the file exist
then 
    echo "$file_name found"
else
    echo "$file_name not found"
fi

# -d for directory
# -b for blob files 
# -c for character files
# -s for empty files or not
# -e for existing file or not
# -r for read permission
# -w for write permission
# -x for execute permission

# check for directory

echo -e "Enter the directory name: \c"

read dir_name
if [ -d $dir_name ] # -d flag to check for directory
then
    echo "$dir_name directory found"
else   
    echo "$dir_name dirctory not found"
fi

# check if the file is empty 
echo -e "Enter the file name: \c"
read file_text
if [ -s $file_text ]
then 
    echo "$file_text is not empty"
else
    echo "$file_text is empty"
fi