#! /bin/bash

IFS= read -rap "Enter your name or press # to quit: " -d "#"  name 

# -d flag will continue to read untill the specified delimiter is read
# -p flag allows to send comment to input

echo "${name[0]}"