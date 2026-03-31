#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Użycie: $0 plik katalog1 katalog2.."
    exit 1
fi

PLIK=$1
shift

if [ ! -f "$PLIK" ]; then
    echo "Plik $PLIK nie istnieje"
    exit 1
fi

for KATALOG in "$@"; do
    if [ -d "$KATALOG" ]; then
        cp "$PLIK" "$KATALOG"
        echo "Skopiowano $PLIK do $KATALOG"
    else
        echo "Katalog $KATALOG nie istnieje"
    fi
done
