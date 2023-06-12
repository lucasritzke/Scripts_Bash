#!/bin/bash 

echo "Qual o primeiro numero"
read num1
echo "Qual o segundo numero"
read num2
soma=$(( num1 + num2 ))
divisao=$(( num1 / num2 ))
subtracao=$(( num1 - num2 ))
multiplicacao=$(( num1 * num2 ))
echo -e "A multipliacacao de $num1 e $num2 e de $multiplicacao\nA Divisao de $num1 e $num2 e de $divisao\nA soma de $num1 e $num2 e de $soma\nA subtraca de $num1 e $num2 e de $subtracao"


