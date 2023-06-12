#!/bin/bash 

echo "Qual o caminho absoluto do diretorio"
read directory

if ! [ -d $directory ]; then 
	echo "O diretorio nao existe"
	exit 1
fi

contador=0

for arquivo in "$directory"/*; do
	if [ -f $arquivo ]; then 
		contador=$((contador + 1))
	fi
done
ls -la $directory
echo "Tem somente $contador arquivos!!"
