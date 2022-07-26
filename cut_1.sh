#! /bin/bash

# print the 3rd character from stdin

cut_input() {
    IFS= read -rp "Enter your name or press # to quit: " -d "#" line 
    echo "$line" | cut -c3
}

cut_input

# IFS= read -rp "Enter your name or press # to quit: " -d "#"  name
# -d flag will continue to read untill the specified delimiter is read
# -p flag allows to send comment to input

