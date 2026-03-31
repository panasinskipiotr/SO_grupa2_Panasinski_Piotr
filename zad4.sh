#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Podaj dwie liczby"
	exit 1
fi

SUMA=$(($1+$2))
echo "Wynik dodawania: $SUMA"
