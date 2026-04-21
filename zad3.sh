!/bin/bash
read -p "Podaj nazwę pliku: " nazwa_pliku

if [ -f "$nazwa_pliku" ] && [ -x "$nazwa_pliku" ]; then
    ./"$nazwa_pliku"
    wynik=$?
    echo "Program zakończony kodem wyjścia: $wynik"
else
    echo "Plik nie jest plikiem zwykłym lub nie ma praw do wykonywania!"
fi
