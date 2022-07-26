#! /bin/bash

# cut the text from first to fourth field.
# Tab is the default field delimiter

cut_input() {
    IFS= read -rp "Enter your text or press # to quit: " line
    echo "$line" | cut -f1-3
}

cut_input