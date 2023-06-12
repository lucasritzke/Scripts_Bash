#!/bin/bash

numeros_primos=(2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73)

read -p "Digite um número: " num

encontrado=false

for primo in "${numeros_primos[@]}"; do
    if [ "$primo" -eq "$num" ]; then
        encontrado=true
        break
    fi
done

if [ "$encontrado" = true ]; then
    echo "O número $num é primo."
else
    echo "O número $num não é primo."
fi

