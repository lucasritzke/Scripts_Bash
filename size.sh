#!/bin/bash

echo "qual o diretorio??"
read dir

if ! [ -d "$dir" ]; then 
	echo "Diretorio nao existe"
fi

arquivos=$(find "$dir" -type f -exec du -b {} + | sort -rn)

contador=0

while IFS= read -r linha; do 
	tamanho=$(echo "$linha" | awk '{print $1}')
	arquivo=$(echo "$linha" | awk '{print $2}')

	echo "$arquivo ($tamanho bytes)"

	contador=$((contador + 1))

	if [ $contador -eq 5 ]; then 
		break 
	fi
done <<< "$arquivos"

