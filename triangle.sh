#! /bin/bash

# Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.

# constraints
# The sum of any two sides will be greater than the third.

readInt() {
    read -r line
    echo -n "$line"
}
x=$(readInt)
y=$(readInt)
z=$(readInt)

if [ "$((x+y))" -gt "$z" ] || [ "$((y+z))" -gt "$x" ] || [ "$((x+z))" -gt "$y" ]; then
    if [ "$x" -eq "$y" ] && [ "$x" -eq "$z" ]; then
        echo "EQUILATERAL";
    elif [ "$x" -eq "$y" ] || [ "$x" -eq "$z" ] || [ "$y" -eq "$z" ]; then
        echo "ISOSCELES";
    else
        echo "SCALENE";
    fi
fi


# items=$( cat - | tr " " "\n" | uniq -u - | wc -l )

# if [ "$items" -eq 0 ] 
# then 
#     echo "EQUILATERAL"

# elif [ "$items" -eq 1 ]
# then 
#     echo "ISOSCELES"

# else [ "$items" -eq 3 ] 
#     echo "SCALINE"
# fi