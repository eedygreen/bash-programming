#! /bin/bash

echo "hello World!"

echo $BASH
echo $BASH_VERSION
echo $PWD
echo $HOME

name=Eedy
echo My name is $name

# echo " Enter your name: "
# read first_name second_name
# echo your fullname is $first_name $second_name

read -p "username: " user_var
echo "username: " $user_var

# use -s flag to silent the user input

read -sp "password: " user_pass
echo "password: " $user_pass

# use the -a flag to read an array
read -a user_names

echo "names: ${user_names[0]}, ${user_names[1]}, ${user_names[2]}"
echo ${user_names}

# using default variable to get user input
echo "Enter your name: "
read
echo $REPLY