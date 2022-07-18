#! /bin/bash

# select loops iterate over the list with options to make a choice by entering the number associated with each item
# select varName in list
# do 
#   command1
#   command2
#   commandN
# done

# select name in eedy green isah idris
# do 
#     echo "$name selected"
# done

select name in eedy green idris isah
do 
    case $name in
    eedy)
        echo "$name selected";;
    green)
        echo "$name selected";;
    idris)
        echo "$name selected";;
    isah)
        echo "$name selected";;
    *)
        echo "Error";;
    esac
done