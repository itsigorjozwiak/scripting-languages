# Języki skryptowe

## Obsługa opcji i argumentów w Bashu

### Zadanie SHELL02

Napisz dwa skrypty w powłoce Bash, które analizują i wypisują opcje oraz argumenty przekazane w linii poleceń, wykorzystując dwa różne mechanizmy parsowania.

1. **Program 1 - `getopts`**
   - Wykorzystuje wbudowane polecenie `getopts` do obsługi krótkich opcji (np. `./arg1 -a -i input -o output arg1 arg2`).
   - Obsługuje jednoliterowe opcje, przy czym `-i` oraz `-o` wymagają podania nazwy pliku, a `-q` jest niedozwolona.

2. **Program 2 - `getopt`**
   - Wykorzystuje zewnętrzne polecenie `getopt` do analizy opcji i argumentów.
   - Obsługuje te same krótkie opcje co pierwszy program oraz dodatkową opcję `--help`, wyświetlającą pomoc.

3. **Walidacja danych:**
   - Skrypty wykrywają niedozwoloną opcję `-q` oraz brak wymaganego argumentu dla `-i` lub `-o`.
   - Komunikaty mają określony priorytet: `--help` (program 2), następnie `-q`, a na końcu brak nazwy pliku.

4. **Formatowanie wyjścia:**
   - Opcje wypisywane są w kolejności alfabetycznej, a argumenty pozycyjne w kolejności ich przekazania.
   - Argumenty pozycyjne są numerowane od `$1`, a ich lista poprzedzona jest nagłówkiem `Arguments are:`.
   - Jeśli nie podano argumentów pozycyjnych, nagłówek nie jest wyświetlany.

Autorem zadania oraz materiałów pomocniczych, które wykorzystałem, wykonując zadanie, jest dr Mateusz Łącki.
