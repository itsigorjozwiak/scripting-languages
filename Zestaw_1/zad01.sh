#!/usr/bin/env bash
# Igor Jóźwiak

set -euo pipefail

if (( $# < 1 || $# > 2 )); then
    printf 'Oczekiwano B albo A i B\n' >&2
    exit 2
fi

for argument in "$@"; do
    if [[ ! $argument =~ ^(0|[1-9][0-9]*)$ ]]; then
        printf 'Nieprawidlowa liczba: %s\n' "$argument" >&2
        exit 2
    fi
done

if (( $# == 1 )); then
    A=1
    B=$1
else
    A=$1
    B=$2
fi

if (( B < A )); then
    exit 0
fi

printf '%4s' ''
for (( kolumna=A; kolumna<=B; kolumna++ )); do
    printf '%4d' "$kolumna"
done
printf '\n'

for (( wiersz=A; wiersz<=B; wiersz++ )); do
    printf '%4d' "$wiersz"
    for (( kolumna=A; kolumna<=B; kolumna++ )); do
        printf '%4d' "$((wiersz * kolumna))"
    done
    printf '\n'
done