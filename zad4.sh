!/bin/bash

if [ $# -eq 1 ]; then
    if [ -d "$1" ] && [ -r "$1" ]; then
        pliki=$(find "$1" -maxdepth 1 -type f | wc -l)
        katalogi=$(find "$1" -maxdepth 1 -type d | wc -l)
        katalogi=$((katalogi - 1))
        echo "$pliki $katalogi"
    fi
fi
