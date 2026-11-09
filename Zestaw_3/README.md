
# Języki skryptowe

## Bezpieczne przetwarzanie nazw plików w Bashu

### Zadanie SHELL03

Napisz dwa skrypty w powłoce Bash, które tworzą listę plików wraz z ich rozmiarem i sumą kontrolną MD5, poprawnie obsługując nazwy zawierające spacje oraz inne nietypowe znaki.

1. **Program 1 - `proga`**
   - Przyjmuje ścieżkę do katalogu jako argument (np. `./proga dane`).
   - Wyszukuje wszystkie pliki zwykłe w podanym katalogu i jego podkatalogach.
   - Wypisuje ścieżki względne względem katalogu wejściowego, zakodowane w postaci szesnastkowej.

2. **Program 2 - `progb`**
   - Odczytuje ze standardowego wejścia ścieżki plików rozdzielone bajtem NUL (np. `find dane -type f -print0 | ./progb`).
   - Obsługuje nazwy plików zawierające spacje, tabulatory, znaki nowej linii i inne znaki specjalne.
   - Koduje w postaci szesnastkowej całe ścieżki otrzymane na wejściu.

3. **Bezpieczne przetwarzanie danych:**
   - Skrypty wykorzystują `find` oraz odczyt ścieżek rozdzielonych bajtem NUL (`read -r -d ''`), unikając problemów ze znakami specjalnymi.
   - Wykorzystują pliki tymczasowe tworzone przez `mktemp`, bez użycia *process substitution*.
   - Nazwy plików są odpowiednio cytowane, aby zapobiec niepożądanej interpretacji znaków przez powłokę Bash.

4. **Formatowanie wyjścia:**
   - Dla każdego pliku wypisywane są: ścieżka zakodowana w HEX, rozmiar w bajtach (`stat`) oraz suma kontrolna MD5 (`md5sum`).
   - Wyniki są sortowane rosnąco według zakodowanej ścieżki (`sort`).
   - Na standardowe wyjście (`stdout`) trafia wyłącznie lista plików, a komunikaty diagnostyczne kierowane są na `stderr`.

Autorem zadania oraz materiałów pomocniczych, które wykorzystałem, wykonując zadanie, jest dr Mateusz Łącki.
