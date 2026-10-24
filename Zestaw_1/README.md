# Języki skryptowe

## Tabliczka mnożenia w Bashu

### Zadanie SHELL01

Napisz skrypt w powłoce Bash, który generuje sformatowaną tabliczkę mnożenia od wartości A do B.

1. **Argumenty linii poleceń:**
   - Wartość A i B są przekazywane jako argumenty (np. `./skrypt.sh A B`).
   - W przypadku podania tylko jednego argumentu zakłada się, że A = 1, a podana wartość to B.
2. **Walidacja danych:**
   - Skrypt nie wypisuje niczego na standardowe wyjście, jeśli dane są niepoprawne (np. B < A, podano niepoprawne znaki lub niewłaściwą liczbę argumentów).
3. **Formatowanie wyjścia:**
   - Wynik drukowany jest przy użyciu polecenia `printf` (minimalna szerokość komórki wynosi 4 znaki, wartości wyrównane do prawej).
   - Pierwszy wiersz zawiera nagłówki kolumn, a pierwsza kolumna nagłówki wierszy.

Autorem zadania oraz materiałów pomocniczych, które wykorzystałem, wykonując zadanie, jest dr Mateusz Łącki.
