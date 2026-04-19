#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 7 – semestr letni 2020/2021
#
# Celem zajęć jest zapoznanie się z wyrażeniami regularnymi, wykorzystując
# przy tym narzędzia awk i grep oraz wszystkie inne, poznane na zajęciach.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
#

#
# Zadanie 8.
# Przetworzyć zawartość pliku `dodatkowe/sensors.txt` i wyświetlić całą jego
# zawartość, ale podmieniając w locie zapisane tam wartości temperatur ze skali
# Celsjusza na Fehrenheita: T[°F] = T[°C] * 9/5 + 32.
#
awk '{
    # Szukamy w aktualnej linii ($0) matcha i przechowujemy je w tablicy
  while (match($0, /\+([0-9]+\.[0-9]+)°[iC]/, tab)) {
    celsius = tab[1] 
    fahrenheit = celsius * 9/5 + 32
    
    # formatujemy obliczoną liczbę
    fahrenheit = sprintf("%.1f", fahrenheit)
    
    # Zamieniamy temperaturę w tekście
    sub(/\+[0-9]+\.[0-9]+°[iC]/, "+" fahrenheit "°F")
  }
  print $0
}' dodatkowe/sensors.txt
