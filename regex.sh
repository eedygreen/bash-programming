#! /bin/bash

# search for exact word
grep  "\<the\>"

grep -w 'the'

# find duplicate digits

grep "\([0-9]\)"

grep "\([0-9]\)\1" # 00 11

# stream editor
# this only replaced the first occurrence match
sed 's/old/new/' from_file.txt > to_file.txt

# use -g flag for global match and replace

sed 's/old/new/g' from_file.txt > to_file.txt

# search and replacing special character
# some other escape characters are _ : \
sed '_/_//_g' from_file.txt > to_file.txt

# double the mecth pattern
sed 's/[0-9]/&&/g' from_file.txt > to_file.txt