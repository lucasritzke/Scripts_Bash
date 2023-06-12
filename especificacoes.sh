#!/bin/bash 

echo "Qual o diretorio que deseja fazer essa verificacao"
read dir

if ! [ -d $dir ]; then 
	echo "Diretorio nao foi encontrado!!"
fi

arquivos=$(find "$dir" -type f -exec du -b {} + | sort -rn)

contador=0
echo "Top 10 maiores arquivos"
while IFS= read -r linha; do 
	tamanho=$(echo "$linha" | awk '{print $1}')
        arquivo=$(echo "$linha" | awk '{print $2}')

        echo "Arquivo: $arquivo | Tamanho: $tamanho bytes"

        contador=$((contador + 1))

        if [ $contador -eq 10 ]; then
                break
        fi
done <<< "$arquivos"
