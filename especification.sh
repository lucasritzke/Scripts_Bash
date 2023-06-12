#!/bin/bash 

echo "Qual o arquivo que deseja verificar"
read file
if [ -e $file ]; then 
	echo "O arquivo existe!!"
else 
	echo "O arquivo nao existe!!"
	exit 1
fi
if [ -f $file ]; then 
	echo "E um arquivo regular"
else 
	echo "Nao e um arquivo regular"
fi
if [ -d $file ]; then 
	echo "e um diretorio"
else
	echo "E um arquivo"
fi
if [ -r $file ]; then 
	echo "O arquivo e legivel"
else
	echo "O arquivo nao pode ser lido"
fi
if [ -w $file ]; then
	echo "O arquivo pode ser escrito"
else
	echo "Nao pode ser escrito no arquivo"
fi
if [ -x $file ]; then 
	echo "O arquivo pode ser executavel"
else
	echo "O arquivo nao pode ser executavel"
fi
