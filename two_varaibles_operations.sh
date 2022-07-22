#! /bin/bash

read -r x y
#read -r y

printf "%s\\n" "$x"{+,-,*,/}"($y)"| bc