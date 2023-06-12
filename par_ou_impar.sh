#!/bin/bash 

echo "Digite um numero qualquer positivo"
read num

resto=$(( $num % 2 ))

if [[ $resto -eq 0 ]]; then
	echo "O numero e par"
else
	echo "O numero e impar"
fi
