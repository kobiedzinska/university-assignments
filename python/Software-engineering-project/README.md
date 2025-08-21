# SO2 - Multithreaded chat server

Repozytorium projektów z kursu **Systemy Operacyjne 2**

## Opis projektu
Ten projekt implementuje wielowątkowy serwer czatu w języku Python, który umożliwia wielu klientom połączenie i komunikację w czasie rzeczywistym. Serwer wykorzystuje moduł threading do zarządzania wielowątkowością oraz ręcznie zaimplementowane mechanizmy ochrony sekcji krytycznych (mutexy, semafory) w celu zapewnienia bezpieczeństwa wątków i prawidłowej synchronizacji wiadomości między klientami.

## Kompilacja i uruchomienie
### Serwer
```bash
python server.py [host] [port]
```
### Klient
```bash
python client.py [host] [port]
```
Defaultowe wartości, jeśli żadne nie zostaną podane:
host: 127.0.0.1 (localhost),
port: 8888

## Wątki i ich funkcje:
### Serwer
| Wątek   | funkcja         | Opis    |
| ------ | ---------------- |---------|
| główny wątek | start() | Akceptuje połączenia i uruchamia serwer|
| zajmowanie się klientem | handle_client() | Obsługuje komunikację z pojedynczym klientem |
| zajmowanie się wiadomościami | dispatch_messages() | Odpowiada za rozsyłanie wiadomości do wszystkich klientów |

### Klient
| Wątek   | funkcja         | Opis    |
| ------ | ---------------- |---------|

## Sekcje krytyczne 
| Sekcja  | Blokada   | Powód użycia |
| ------ | ---------------- | -------- |
| clients   | clients_lock (threading.Lock) | Lista klientów może być modyfikowana przez wiele wątków |
| print() oraz komunikaty na konsoli | console_lock (threading.Lock) | Jednoczesne wypisywanie tekstu na konsolę przez wiele wątków |
| Kolejka wiadomości message_queue | none | queue.Queue jest bezpieczna dla wątków, nie wymaga dodatkowej blokady |

### Przykład zabezpieczenia sekcji:
```python
with self.clients_lock:
self.clients.append((client_id, client_socket))
```
## Semafory
| Semafor | Wartość | Cel użycia |
|---------| -------- | ---------- |
| connection_semaphore | 5 (max_connections) | Ogranicza liczbę jednoczesnych klientów do max_connections|

### Przykład użycia semafora:
```python
if self.connection_semaphore.acquire(blocking=False):
    try:
        client_socket, client_address = self.server_socket.accept()
        # ...
    except Exception as e:
        self.connection_semaphore.release()  # Releasing if there's error
else:
    print("[SERVER] Max connections reached, waiting...")
    threading.Event().wait(5.0)  # waiting 5 seconds
```


## Kod Klienta i Wykorzystanie Wątków:

Kod klienta w tym projekcie wykorzystuje dwa główne wątki ( jeden z nich jest niejawnym wątkiem głównym procesu) w celu ciągłego odbierania wiadomości z serwera:

* **Wątek główny (interakcja z użytkownikiem):** Główny wątek programu klienta jest odpowiedzialny za:
    * Nawiązywanie połączenia z serwerem przy użyciu biblioteki `socket`.
    * Ciągłe odczytywanie danych wprowadzonych przez użytkownika z standardowego wejścia (konsoli) za pomocą funkcji `input()`.
    * Wysyłanie wprowadzonych wiadomości do serwera za pośrednictwem otwartego połączenia socketowego przy użyciu metody `socket.sendall()`.
    * Obsługę komendy `/quit` umożliwiającej bezpieczne rozłączenie z serwerem.

* **Wątek `receive_messages()` (odbieranie wiadomości):** Podczas uruchamiania klienta tworzony jest oddzielny wątek, który wykonuje funkcję `receive_messages()`. Jego zadaniem jest:
    * Ciągłe nasłuchiwanie danych przychodzących od serwera na otwartym połączeniu socketowym za pomocą metody `socket.recv()`.
    * Dekodowanie odebranych danych do formatu UTF-8.
    * Sprawdzanie, czy połączenie z serwerem nie zostało zerwane.
    * Wyświetlanie odebranych wiadomości użytkownikowi na konsoli.
    * Ponowne wyświetlanie prompta (`> `) po odebraniu wiadomości, aby umożliwić użytkownikowi natychmiastowe wpisanie kolejnej wiadomości.
    * Obsługa potencjalnych błędów połączenia (`ConnectionResetError`, `BrokenPipeError`) oraz innych wyjątków związanych z odbieraniem danych.

### Synchronizacja Wątków w Kliencie:

W kodzie klienta, synchronizacja wątków jest kluczowa w kontekście współdzielonego zasobu, jakim jest standardowe wyjście (konsola). Aby zapobiec sytuacji, w której wątek odbierający wiadomości i wątek główny (odczytujący input użytkownika) próbują jednocześnie wypisywać tekst, co mogłoby skutkować nieczytelnym wyjściem, używana jest blokada (`threading.Lock`):

* **`console_lock`:** Instancja klasy `threading.Lock` jest tworzona w klasie `Client`. Zarówno wątek główny (przed wypisaniem prompta i komunikatów o połączeniu/rozłączeniu) jak i wątek `receive_messages()` (przed wyświetleniem odebranej wiadomości) używają kontekst menadżera `with self.console_lock:` do uzyskania wyłącznego dostępu do standardowego wyjścia. Dzięki temu tylko jeden wątek na raz może wypisywać tekst na konsolę, zapewniając spójność i czytelność wyświetlanych informacji.

W przeciwieństwie do serwera, klient nie zarządza wieloma jednoczesnymi połączeniami. Głównym celem zastosowania wątków jest zapewnienie nieblokującej operacji odbierania wiadomości, dzięki czemu interfejs użytkownika pozostaje responsywny i użytkownik może w każdej chwili wpisać i wysłać wiadomość, nawet gdy w tle odbierane są inne komunikaty.

### 📎 Linki:
- threading https://docs.python.org/3/library/threading.html#
- socket https://docs.python.org/3/howto/sockets.html
- queue https://docs.python.org/3/library/queue.html
