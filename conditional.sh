#! /bin/bash

# if [ condition ]
# then 
#   statement 
# fi

echo -e "Enter the age number and then the name: \c"

read -ra arr
name=eedy
# cpmpare age is equal to 10
if [ "${arr[0]}" -eq 10 ]
then 
    echo "S/he is a minor"
fi

# use the double parenthesis when using these four comparison operators
# >, <, >=, <=

if [[ ${arr[0]} -le 10 ]]
then 
    echo "S/he is still a minor"
fi

# this block will flag sytax error

# if [[ ${arr[0}] >= 10 ]]
# then 
#   echo "S/he is still a minor"
# fi 

# strings comparison

if [ "${arr[1]}" == "$name" ] # this is same as $name -eq "eedy"
then
    echo "Its my name"
fi

# Note
# you must use double brackets when comparing strings too
# only < or < are used with double brackets [[]]
if [[ "${arr[1]}" > "$name" ]]
then
    echo "it's not my name"
elif [ "${arr[1]}" == "$name" ]
then 
    echo "its my name"
else
    echo "its someone else"
fi

# use double brackets when using >= or <=

if [[ "${arr[1]}" -ge "$name" ]]
then
    echo "it works for parenthesis and brackets"
else
    echo "it sucks!"
fi