#!/bin/bash

awk -F: '{print $7}' /etc/passwd | sort | uniq -c | sort -nr

echo "$#"
if [ "$#" -gt 2 ]; then
    echo "$1 $2 $3"
fi

if [ "$#" -eq 3 ]; then
    if [ -f "$1" ] && [ -r "$1" ] && [ -f "$2" ] && [ -r "$2" ] && [ ! -e "$3" ] && [ -w "$(dirname "$3")" ]; then
        cat "$1" "$2" > "$3"
    fi
fi

if [ "$#" -eq 1 ]; then
    if [ -d "$1" ] && [ -r "$1" ]; then
        find "$1" -mindepth 1 -maxdepth 1 -type f | wc -l
        find "$1" -mindepth 1 -maxdepth 1 -type d | wc -l
    fi
fi