#! /bin/bash

# cut the text from first to fourth field.
# Tab is the default field delimiter

cut_input() {
    IFS= read -rp "Enter your text or press # to quit: " line
    echo "$line" | cut -f1-3
}

cut_input
# space delimiter to
cut -d ' ' -f4     # identify and display its fourth word

cut -d ' ' -f1-3  #identify and display its first three words.

# Given a tab delimited file with several columns (tsv format) print the fields from second fields to last field.

cut -f2-