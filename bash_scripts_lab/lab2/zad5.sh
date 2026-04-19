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
# Zadanie 5.
# Utworzyć katalog o nazwie `głęboki` wewnątrz katalogu `ddd` i skopiować
# do niego wszystkie pliki zwyczajne (żadnych folderów!) znajdujące się
# w katalogu `bbb` i ewentualnych jego podkatalogach.
# Zakładamy, że katalog `głęboki` mógł już wcześniej istnieć – w takim
# przypadku nie należy tworzyć go na nowo, ale upewnić się, że podczas
# kopiowania nie nadpiszemy żadnych istniejących w nim plików!
#
# Tworzymy katalog wewnątrz w ddd, -p = powoduje, że nie zwróci nam błędów, jeśli jest już utworzony
mkdir -p ddd/głęboki

# Kopiujemy pliki zwyczajne z bbb do ddd/głęboki
# -type -f = wyszukuje pliki zwyczajne
# find szuka w katalogu bbb i podkatalogach
# -exec cp  = dla kazdego pliku wykonaj kopiowanie
# -n = bez nadpisywania
# {} = symbol zastępczy dla aktualneie znalezionego pliku 
find bbb -type f -exec cp --update=none {} ddd/głęboki \;

# \; = zakończenie polecenia exec


