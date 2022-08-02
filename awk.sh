#! /bin/bash

# awk print text
# default delimiter is space

awk '{ print }' text_file.csv

awk '{ print $2 }' text_file.csv # print second column 

awk '{ print $1,$2 }' text_file.csv # print column 1 & 2

# join two columns together
awk '{ print $1.$2 }' text_file.csv # this cancatenate column and 2