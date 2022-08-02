#! /bin/bash

# awk print text
# default delimiter is space

awk '{ print }' text_file.csv

awk '{ print $2 }' text_file.csv # print second column 

awk '{ print $1,$2 }' text_file.csv # print column 1 & 2

# join two columns together
awk '{ print $1.$2 }' text_file.csv # this cancatenate column and 2

# print sepcific word
awk '/find it/ { print }' text_file.csv # its case sensitve

# every line that contains lower case
awk '/[a-z]/ { print }' text_file.csv

# every line that contains numbers
awk '/[0-9]/ { print }' text_file.csv

# every line that starts with numbers
awk '/^[0-9]/ { print }' text_file.csv

# every line that ends with numbers
awk '/[0-9]$/ { print }' text_file.csv

# awk works with conditionals
awk '{ if( $1 ~ /234/ ) print }' text_file.csv

# check if its a number
awk '{ if( $2 ~ /[0-9]/ ) print }' text_file.csv

# field delimiter
awk -F: '{ print }' text_file.csv