#! /bin/bash

# if [ condition ]
# then 
#   statement 
# fi

age=10
# cpmpare age is equal to 10
if [ $age -eq 10 ]
then 
    echo "S/he is a minor"
fi

# use the double parenthesis when using these four comparison operators
# >, <, >=, <=

if (( $age <= 10 ))
then 
    echo "S/he is still a minor"
fi

# this block will flag sytax error

# if [[ $age >= 10 ]]
# then 
#   echo "S/he is still a minor"
# fi 

# strings comparison

name=eedy
if [ $name == "eedy" ] # this is same as $name -eq "eedy"
then
    echo "Its my name"
fi

# Note
# you must use double brackets when comparing strings too
# only < or < are used with double brackets [[]]
if [[ $name > "eedy" ]]
then
    echo "it's not my name"
elif [ $name == "eedy" ]
then 
    echo "its my name"
else
    echo "its someone else"
fi

if (( $name >= "eedy" ))
then
    echo "it works for parenthesis and brackets"
else
    echo " it sucks!"
fijust testing
