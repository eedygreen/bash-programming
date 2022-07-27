#! /bin/bash

# case insensitive: count unique words and remove trailing spaces

uniq -ci | tr -s ' ' | cut -c2-

# case sensitive: count unique words, remove trailing spaces
uniq -c | tr -s ' ' | cut -c2-