#!/bin/bash

if [ -e BACKUP ] && [ ! -d BACKUP ]; then
    echo "Błąd: BACKUP istnieje i nie jest katalogiem" >&2
    exit 1
fi

mkdir -p BACKUP

for file in *~; do
    if [ -e "$file" ]; then
        cp -a "$file" BACKUP/
    fi
done