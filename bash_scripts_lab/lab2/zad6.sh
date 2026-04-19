#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 2 – semestr letni 2020/2021
#
# Celem zajęć jest nabranie doświadczenia w podstawowej pracy z powłoką Bash,
# w szczególności w nawigowaniu po drzewie katalogów i sprawdzaniu uprawnień.
#
# Przygotowane rozwiązania nie muszą być całkowicie uniwersalne. Zakładamy,
# że ogólna struktura katalogów się nie zmienia (nie będzie już więcej/mniej
# poziomów podkatalogów), jednakże same nazwy i zawartości plików (o ile
# nie są podane wprost w treści zadań) mogą być dowolne i ulegać zmianie,
# a przygotowane rozwiązania nadal powinny działać.
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 6.
# Odnaleźć w katalogu `bbb` plik, którego zawartość pokrywa się z zawartością
# pliku `bardzo tajna treść` (jest on w katalogu `ddd`) i skopiować znaleziony
# plik do katalogu `ddd`, jeśli jeszcze go tam nie ma.
#

mkdir -p ddd

# Szukamy plik, który jest taki sam jak plik "bardzo tajna treść"
fileX=$(find bbb -type f -exec cmp -s {} "ddd/bardzo tajna treść" \; -print | head -n 1)

if [ -n "$fileX" ]; then
    filename=$(basename "$fileX")
    echo "Znaleziono plik: $fileX"
    
    if [ ! -f "ddd/$filename" ]; then
        cp "$fileX" "ddd/"
        echo "Skopiowano znaleziony plik $filename do katalogu ddd"
    else
        echo "Plik ddd/$filename już istnieje. Nie kopiuje"
    fi
else
    echo "Nie znaleziono pliku o takiej samej treści"
fi
