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
# Zadanie 3.
# Skopiować wszystkie możliwe pliki z katalogu `aaa` do katalogu `ddd`,
# upewniając się, że nie nadpiszemy żadnego istniejącego pliku w `ddd`.
#
# Stwórz katalog jeśli nie istnieje
mkdir -p ddd

# Sprawdzamy pliki w aaa
for file in aaa/*; do
	# sprawdzamy czy jest to plik, a nie katalog => -f
	if [ -f "$file" ]; then
		# pobieramy nazwę pliku bez ścieżki
		filename=$(basename "$file")
		# jeśli nie znajdujje się on w folderze ddd, to kopiuj
		if [ ! -f "ddd/$filename" ]; then
			cp "$file" "ddd/$filename"
			echo "Skopiowano: $filename"
		else
			echo "Plik $filenamse już istnieje w ddd, continue."
		fi
	fi
done

