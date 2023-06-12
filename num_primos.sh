#!/bin/bash

numeros_primos=(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73)

read -p "Digite um número: " num

# Encontra o número primo mais próximo
numero_primo_mais_proximo=${numeros_primos[0]}
diferenca_minima=$((numero_primo_mais_proximo - num))
if (( diferenca_minima < 0 )); then
    diferenca_minima=$((diferenca_minima * -1))
fi

for primo in "${numeros_primos[@]}"; do
    diferenca=$((primo - num))
    if (( diferenca < 0 )); then
        diferenca=$((diferenca * -1))
    fi

    if (( diferenca < diferenca_minima )); then
        diferenca_minima=$diferenca
        numero_primo_mais_proximo=$primo
    fi
done

echo "Número primo mais próximo de $num: $numero_primo_mais_proximo"

