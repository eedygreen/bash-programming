#! /bin/bash

# search for exact word
grep  "\<the\>"

grep -w 'the'

# find duplicate digits

grep "\([0-9]\)"

grep "\([0-9]\)\1" # 00 11

# match dduplicate numbers. The numbers may have space in between them i.e one character
grep '\([0-9]\) *\1' 

# match these words "the that then those"
grep -Ewi 'th(e|at|en|ose)'

# stream editor
# this only replaced the first occurrence match
sed 's/old/new/' from_file.txt > to_file.txt

# use -g flag for global match and replace

sed 's/old/new/g' from_file.txt > to_file.txt

# search and replacing special character
# some other escape characters are _ : \ |
sed '_/_//_g' from_file.txt > to_file.txt

# double the mecth pattern
sed 's/[0-9]/&&/g' from_file.txt > to_file.txt

# replace the third match unix with linux
sed 's/unix/linux/3g'

# this will replace the match string only on the third line
sed '3 s/match/replace/'

sed '1,3 s/match/replace/'  # range line 1 to 3

sed '3,$ s/match/replace/' # $ for last line - from 3rd to last line of the file


# replace lines that match a pattern

sed '/patter/ s/match/replace/'

sed '/male/ s/girl/boy/'  # the sed first looks for the lines with male and replaces girl with boy 

# deleting lines

sed '2 d'       # delete line 2

# ranges
sed '3,$ d'     # delete from line 3 to last line

# numbers
sed '2,3,6,8 d' # delete line 2, 3, 6, and 8

# duplicate the text in a file

sed 'p'

# use sed as grep

sed -n '/linux/p' # same as
grep 'linux'

# print everything that is not linux
sed -n '/linux/ !p'  # same as
grep -v 'linux'

# add a line after a match is found with "a"
sed '/linux/a "add a text here"'

# add a line before the match linux "i"
sed '/linux/i "add a text here"'

# replace an entire line with "c"
sed '/linux/c "replace with this text"' # this should replace the line with the words specified in the comment

# Transform 'tr' command for sed is 'y'
# Note
# with  the "y" use complete word to avoid errors. 
# error: imagine the above example translating terminal to TerminaL
sed 'y/l/L/'     # this will change the lower case l to upper case L

sed 'y/lt/LT/'   # this will change the "l" to "L" and "t" to "T"

# highlight all accurences with wrapper
sed 's/papers/{\&}/g'           # this will wrapp curly braces around paper {paper}


# Given an input file, in each line, highlight all the occurrences of 'thy' by wrapping them up in brace brackets. 
# The search should be case-insensitive.
sed 's/papers/{\&}/ig  '

# Each line contains a credit card number in the form dddd dddd dddd dddd, where  denotes a decimal digit (i.e.,  through ). 
# There are a total of  lines of credit card numbers.

sed -r 's/[0-9]{4} /**** /g'  # note there is use of trailing space to match the digits and also to replace

# the last digit won't be replaced because it has no trailing space and thus does not meet the match reqiurement

sed -E 's/[0-9][0-9][0-9][0-9] /**** /g'

sed -r 's/([0-9]{4}\s){3}([0-9]{4})/**** **** **** \2/' # the first three groups of four digits