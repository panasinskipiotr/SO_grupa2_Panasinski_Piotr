#!/bin/bash

TRASH_DIR="$HOME/trash"

#Tworzenie trash jak nie istnieje
mkdir -p "$TRASH_DIR"

#Usuwanie plików starszych niż 1 dzień
find "$TRASH_DIR" -type f -mtime +1 -exec rm -f {} \;

if [ "$#" -eq 0 ]; then
    echo "Użycie: $0 plik1 [plik2 ...]"
    exit 1
fi


for file in "$@"; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        archive_name="${filename}_$(date +%Y%m%d%H%M%S).tar.gz"

        #Kompresujemy
        tar -czf "/tmp/$archive_name" -C "$(dirname "$file")" "$filename"

        #Przenosimy do kosza
        mv "/tmp/$archive_name" "$TRASH_DIR/"

   	#Usuwamy
        rm -f "$file"

        echo "Przeniesiono: $file -> $TRASH_DIR/$archive_name"
    else
        echo "Pominięto (nie istnieje lub nie jest plikiem): $file"
    fi
done
