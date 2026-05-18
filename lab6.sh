#!/bin/bash

PLIK_DZIENNIKA="dziennik.txt"

case "$1" in
    dodaj)
        shift
        if [ "$#" -gt 0 ]; then
            echo "[$(date +%Y-%m-%d)] $*" >> "$PLIK_DZIENNIKA"
        fi
        ;;
    wypisz)
        if [ -n "$2" ]; then
            grep "^\[$2\]" "$PLIK_DZIENNIKA"
        fi
        ;;
    *)
        echo "Użycie:" >&2
        echo "  $0 dodaj treść wpisu..." >&2
        echo "  $0 wypisz RRRR-MM-DD" >&2
        exit 1
        ;;
esac