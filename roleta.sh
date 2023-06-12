#!/bin/bash 

echo "Qual o valor que deseja apostar"
read aposta

if ! echo "$aposta" | grep -qE '^[0-9]+$'; then
    echo "$aposta nao e um numero"
    exit 1
fi
echo "Qual a cor que voce deseja apostar vermelho ou preto"
read cor

if ! echo "$cor" | grep -qE '(vermelho|preto)'; then
	echo "$cor nao pode ser validada"
	exit 1
fi

num_random=$(($RANDOM%3))

if [ $num_random -eq 1 ]; then 
	echo "Voce perdeu!!!!"
	exit 1
elif [ $num_random -eq 2 ]; then 
	aposta=$(($aposta * 2))
	echo "Seu saldo e de $aposta"
	exit 1
elif [ $num_random -eq 3 ]; then
	aposta=$(($aposta * 2))
        echo "Seu saldo e de $aposta"
        exit 1
else
	echo "algo ocorreu errado"
fi
