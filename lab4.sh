#!/bin/bash

mkdir -p ~/trash
find ~/trash -type f -mtime +1 -delete

for file in "$@"; do
    if [ -e "$file" ]; then
        tar -czf ~/trash/"$(basename "$file").tar.gz" "$file" && rm -rf "$file"
    fi
done