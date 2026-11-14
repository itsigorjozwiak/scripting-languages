# Języki skryptowe

## Przyrostowe kopie zapasowe (snapshoty) z wykorzystaniem hardlinków

### Zadanie SHELL04

Napisz skrypt `snapshot` w powłoce Bash (`./snapshot SRC PREV DEST`), który tworzy przyrostową kopię zapasową katalogu, optymalizując zużycie przestrzeni dyskowej poprzez współdzielenie niezmienionych plików na poziomie systemu plików.

1. **Deduplikacja i dowiązania twarde (`hardlink`)**
   - Wykorzystuje porównywanie binarne zawartości plików bajt po bajcie (`cmp -s`) względem poprzedniego snapshotu (`PREV`).
   - Dla niezmienionych plików tworzy dowiązanie twarde (`ln`), współdzieląc ten sam numer `inode`, natomiast nowe i zmodyfikowane pliki kopiuje (`cp`) z pełną izolacją od katalogu źródłowego (`SRC`).

2. **Strumieniowe przetwarzanie danych i obsługa znaków specjalnych**
   - Przeszukuje rekurencyjnie strukturę katalogów (`find -print0`) i przetwarza rekordy rozdzielone bajtem `NUL`, zapewniając pełną odporność na spacje, znaki nowej linii (`LF`) oraz znaki sterujące w nazwach plików.
   - Odtwarza również puste podkatalogi (`mkdir -p`) i pomija pliki usunięte ze źródła.

3. **Walidacja danych wejściowych i obsługa błędów**
   - Weryfikuje liczbę i poprawność argumentów wywołania, istnienie katalogów wejściowych oraz brak kolizji z katalogiem docelowym (`DEST`).
   - Przekierowuje komunikaty diagnostyczne wyłącznie na standardowe wyjście błędów (`stderr`) i przerywa działanie przy błędach operacji dyskowych (`pipefail`).

4. **Deterministyczny raport operacji (`stdout`)**
   - Koduje ścieżki względne bajt po bajcie w formacie szesnastkowym (`od`) i odczytuje rozmiar plików w bajtach (`stat`).
   - Generuje raport (`DIR`, `COPY`, `LINK`) rozdzielony tabulatorami i sortuje go deterministycznie (`LC_ALL=C sort`) bez nadmiarowych pustych linii.

Autorem zadania oraz materiałów pomocniczych, które wykorzystałem, wykonując zadanie, jest dr Mateusz Łącki.
