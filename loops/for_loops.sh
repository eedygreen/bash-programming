#! /bin/bash

# for VARIABLES in 1 2 3 4 5 ... N
# do
#    command in VARIABLES
# done
# example

echo "${BASH_VERSION}"
for i in {1..10} # {1..10..2} the step option is not supported for Bash version lesser than 4.0
do 
    echo "$i"
done

# for VARIABLES in file1 file2 file3
# do
#    command in $VARIABLE
# done
# example check for directories
for items in *
do 
    if [ -d "$items" ]
    then
        echo "$items"
    fi
done

# example check for files
for files in *
do 
    if [ -f "$files" ]
    then 
        echo "$files"
    fi
done


# for OUTPUT in $(linux command)
# do
#    command in $OUTPUT
# done
# example
for command in ls pwd date
do
    echo "--------------$command---------------"
    $command
    echo " "
done

# for (( EXPR1, EXPR2, EXPR3 ))
# do
# 
# done
# example
for (( i=2; i<10; i++ ))
do 
    echo "$i"
done