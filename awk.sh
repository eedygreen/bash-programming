#! /bin/bash

# awk print text
# default delimiter is space

# syntax
# awk '/search pattern/ {actions}'

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

# field delimiter
awk -F: '{ print }' text_file.csv

## awk works with conditionals
awk '{ if( $1 ~ /234/ ) print }' text_file.csv

# check if the second field is a number
awk '{ if( $2 ~ /[0-9]/ ) print }' text_file.csv

#  identify those lines that do not contain all three scores for students.
awk '{ if($2 =="" || $3 =="" || $4 =="" ) print "Not all scores are available for " $1 }'
# or for brevity
awk '{ NF!=4 print "Not all scores are available for" $1 }'
# ors
awk '{ if (NF < 4) print "Not all scores are available for " $1 }'

# awk if else statement
# A student is considered to have passed if (s)he has a score 50  or more in each of the three subjects.
awk '{ 
    if ($2>=50 && $3>=50 && $4>=50)
        print $1, ":", "Pass";
    
    else
        print $1, ":", "Fail";
}'