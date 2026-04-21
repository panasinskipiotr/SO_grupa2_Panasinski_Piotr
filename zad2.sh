#!/bin/bash

read -p "Podaj nazwe pliku lub katalogu: " nazwa_pliku

if [ ! -e "$nazwa_pliku" ]; then
	echo "Nie istnieje!"
elif [ -d "$nazwa_pliku" ]; then
	echo "To jest katalog!"
elif [ -f "$nazwa_pliku" ]; then
	if [ -r "$nazwa_pliku" ]; then
		echo "Zawartosc pliku: "
		cat "$nazwa_pliku"
	else
		echo "Brak uprawnien do odczytu!"
	fi
fi
