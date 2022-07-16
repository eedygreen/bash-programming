#! /bin/bash

# arrays and indexing

echo -e "Enter the names the items: \c"

read -ra list_items

# print all items in an array
echo "All elements: ${list_items[@]}"

# access a position of an array
echo "The first position is: ${list_items[0]}" # 0 for first element
echo "The second position is: ${list_items[1]}" # 0 for second element
echo "The third position is: ${list_items[2]}" # 0 for third element

# print the position of the elements
echo "The position of the elements are: ${!list_items[@]}" 

# count the total elements i.e the length of the array
echo "The total elements is: ${#list_items[@]}"

# add an element to an array
list_items[2]='Ayobami' #this will replace the element in the third position
echo "New elements: ${list_items[@]}"

# remove an element with the unset
unset list_items[6]     # this will remove the element at index position 6

######  Note #########
# Bash permits empty arrays
# i.e you can chose to insert in any position regardless the indexes before are empty or not
