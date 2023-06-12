#!/bin/bash

echo "qual a quantia em sua conta bancaria?"
read balance

if ! echo "$balance" | grep -qE '^[0-9]+$'; then
    echo "$balance nao e um numero"
    exit 1
fi

MENU() {
	clear
	if [[ $1 ]]; then 
		echo -e "\n$1"
	fi
	echo -e "Bem-Vindo ao Bank-credit\nVoce deseja fazer algumas das op;oes abaixo?\n\n1.Sacar Dinheiro\n2.Depositar dinheiro\n3.Visualizar saldo\n4.Sair"
	read select_mp
	case $select_mp in
		1) sacar ;;
		2) depositar ;;
		3) saldo ;;
		4) leave ;;
		*) MENU 
	esac
}
sacar() {
	clear
	echo "Qual o valor que deseja sacar?"
	read saque
	if [ $balance -lt $saque ]; then
		echo -e "Voce nao tem esse dinheiro para sacar!\nVoltando para o menu principal!"
		sleep 2s
	elif [ $balance -ge $saque ]; then
		balance=$[$balance-$saque]
		echo "Foi descontado $saque da sua conta seu saldo e de R$: $balance"
	else
		echo "algo ocorreu errado"
	fi
	sleep 2s
	MENU
}
depositar() {
clear
echo "Qual o valor que deseja depositar"
read deposito 
balance=$[$balance+$deposito]
echo "Voce adicionou $deposito em seu $balance"
sleep 2s
MENU
}

saldo() {
clear
echo "Seu saldo e de $balance"
sleep 2s
MENU
}
leave() { 
echo "Obrigado por acessar nosso banco"
exit 1
}
MENU
