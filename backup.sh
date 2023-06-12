#!/bin/bash 
data="date +%y-%m-%d"
echo "Qual o diretorio que voce deseja criar um backup ((Informe o caminho absoluto))"
read dir

if ! [ -d $dir ]; then 
	echo "Esse diretorio nao existe"
	exit 1
fi

file_name=$(basename "$dir")
backup_name="$file_name"_"$(date +%y-%m-%d)"
mkdir /home/lritzke/bin/$backup_name

destination="/home/lritzke/bin/"$backup_name""

find "$dir" -type f -name "*.txt" -print0 | while IFS= read -r -d '' file; do
  cp "$file" "$destination"
done

echo "Cópia concluída!"
