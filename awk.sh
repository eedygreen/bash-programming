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
# NF give the total number of field in a record
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

# Output Field Separator

# replaced : with = and print only column 2 and 4
awk -F':' 'BEGIN{ OFS="=" } { print $2,$4}'

# male:eedy age=311 as column 2 & 4 will become male=eedy and age=311

# remove the :

awk -F':' '{ print $2,$4}'

# tranpose vertical to horizontal with Record Separator
# Note: new line is a field in RS
awk '
    BEGIN{
        RS="\n\n"
        FS="\n"
    }
    { print $1,$2 }
'

# this can be added as a script transpos.awk
BEGIN {
        RS="\n\n";
        FS="\n";
    }
    { print $1,$2 }

awk -f transpos.awk file.text

# NR give the Number of Records
# print each line with numbers
awk '{ print "Processing: ", NR }END { print NR, "Total record processed }' file.text

# ORS, print every records with = separating each record
awk 'BEGIN { ORS="=" } { print }'

awk 'ORS=NR%2?";"":""\n"'
