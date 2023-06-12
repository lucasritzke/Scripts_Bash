#!/bin/bash

echo "Qual [e o caminho absoluto do arquivo"
read path

if ! [ -f "$path" ]; then 
	echo "Esse arquivo nao existe"
	exit 1
fi	

saida=$(cat "$path" | wc -w)

echo "O total de palavras e de $saida"
