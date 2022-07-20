#! /bin/bash

is_file_exist() {
    local file_name=$1
    [[ -f "$file_name" ]] && return 0 || return 1
}

usage() {
    echo "You must provide a file name: "
    echo "usage $0 file_name"
}


[[ $# -eq 0 ]] && usage

echo "-----------------------------"

if ( is_file_exist "$1" )
then 
    echo "file found"
else
    echo "file not found!"
fi