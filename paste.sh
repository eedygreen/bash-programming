#! /bin/bash

# remove endline \n and replace with tab \t
paste -s

# Restructure the file in such a way, that every group of three consecutive rows are folded into one, and separated by tab.

paste - - - 

# Replace the newlines in the input file with semicolons
paste -s -d ';' 
# or
paste -s -d ';' - # - indicate a single column

# Restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.

paste -d ';' - - -

paste -d';' - - -

paste -d\; - - -

paste -d';' - - - $1