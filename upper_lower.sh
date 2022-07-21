#! /bin/bash

# Read in one character from STDIN.
# If the character is 'Y' or 'y' display "YES".
# If the character is 'N' or 'n' display "NO".
# No other character will be provided as input.
echo "$BASH_VERSION"

usage(){
    echo -e "Enter Y for Yes or N for No: \c"
}

usage

read -r input
letter=$(echo "$input" | awk '{print tolower($0)}')

if [ "$letter" = "y" ]
then
    echo "YES"
elif [ "$letter" = "n" ]
then
    echo "NO"
else    
    usage
fi

# Bash 4.0: this will work fine ,, for lower case and ^^ for upper case
# single , will turn the first letter to lower case
# single ^ will turn the first letter to upper case

# if [ "${input,,}" = "y" ]
# then
#     echo "YES"
#     elif [ "${input,,}" = "n" ]
#     then
#         echo "NO"
# else   
#     usage
# fi


# if [ "${input^^}" = "Y" ]
# then
#     echo "YES"
# elif [ "${input^^}" = "N" ]
# then
#     echo "NO"
# else    
#     usage
# fi