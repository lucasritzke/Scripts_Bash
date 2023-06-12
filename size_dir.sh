#!/bin/bash 

dir="/home/lritzke/bin"
if ! [ -d $dir ]; then 
	echo "Diretorio nao foi encontrado!!"
else 
	cd "$dir" 
fi

arquivos=$(find "$dir" -type f -exec du -b {} + | sort -rn)

contador=0
while IFS= read -r linha; do 
	tamanho=$(echo "$linha" | awk '{print $1}')
        arquivo=$(echo "$linha" | awk '{print $2}')
	if [ "$tamanho" -ge 10000 ]; then 
		echo "O arquivo $arquivo foi apagado pois tem mais de 10000kb"
		sudo rm $arquivo
		echo "O arquivo $arquivo foi deletado: $tamanho" >> "/home/lritzke/error.log"
	fi

        contador=$((contador + 1))

done <<< "$arquivos"
echo "Ha exatos $contador arquivos neste diretorio."
