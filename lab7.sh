#!/bin/bash

DATA=$(date)
SYSTEM=$(hostname)
CZAS_PRACY=$(uptime -p 2>/dev/null || uptime)
ZALOGOWANI=$(who | wc -l)

dialog --title "Informacje o systemie" --msgbox "Aktualna data:\n$DATA\n\nNazwa systemu:\n$SYSTEM\n\nCzas pracy:\n$CZAS_PRACY\n\nLiczba zalogowanych użytkowników:\n$ZALOGOWANI" 15 60