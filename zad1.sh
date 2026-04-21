#!/bin/bash

read -p "Podaj nazwe: " nazwa_pliku

if [ ! -e "$nazwa_pliku" ]; then
	echo "Plik nie istnieje!"
elif [ -d "$nazwa_pliku" ]; then
	echo "Plik istnieje i jest katalogiem!"
elif [ -f "$nazwa_pliku" ]; then
	echo "Plik istnieje i jest zwyklym plikem!"
else
	echo "Nieznany typ!"
fi
