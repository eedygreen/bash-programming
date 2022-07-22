#! /bin/bash

# Find the
# sum
# difference
# Product
# Quotient

read -r x
read -r y

printf "%s\\n" "$x"{+,-,*,/}"($y)"| bc