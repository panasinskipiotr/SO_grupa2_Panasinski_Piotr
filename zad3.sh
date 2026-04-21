!/bin/bash

if [ $# -eq 3 ]; then
    if [ -f "$1" ] && [ -r "$1" ] && [ -f "$2" ] && [ -r "$2" ] && [ ! -e "$3" ]; then
        cat "$1" "$2" > "$3"
    fi
fi
