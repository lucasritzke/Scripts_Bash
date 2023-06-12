#!/bin/bash

echo "Qual seu nome?"
read name

echo "Qual sua idade?"
read years

if ! echo "$years" | grep -qE '^[0-9]+$'; then
    echo "$years nao e um numero"
    exit 1
fi

if [ $years -le 9 ]; then
    echo "$name ira jogar no time infantil"
elif [ $years -le 14 ]; then
    echo "$name ira jogar no time juvenil"
elif [ $years -le 16 ]; then
    echo "$name ira jogar no time jovem"
elif [ $years -le 20 ]; then
    echo "$name ira jogar no time adulto"
elif [ $years -gt 20 ]; then
    echo "$name nao podera jogar no time"
else
    echo "Aceitamos somente numeros"
fi

