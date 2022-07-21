#! /bin/bash

read -r x
read -r y

printf "%s\\n" "$x"{+,-,*,/}"($y)"| bc