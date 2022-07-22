#! /bin/bash

# A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, 
# then evaluate it. Display the result rounded to  decimal places.

# constraints

# All numeric values are <= 999.

read -ra express

printf "%.3f \n" $( echo "scale=4;${express[@]}" | bc )