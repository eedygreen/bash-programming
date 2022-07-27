#! /bin/bash

IFS=$'\n' read -d '' -r -a lines
printf '%s\n' "${lines[*]}" | sort

# sort by Tab separator
sort -t $'\t' -k 2 -n -r  # -r descending order

sort -t $'\t' -k2 -n      # ascending order

# pipe-delimited file 
# name|sex|Title|

sort -t $'|' -k3 -nr    # -r descending order