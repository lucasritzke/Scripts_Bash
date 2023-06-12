#!/bin/bash

echo "Qual o arquivo que você deseja procurar"
read file

if echo "$file" | grep -q "^/"; then
    if ! [ -e "$file" ]; then
        echo "O arquivo ou diretório $file não existe."
    elif [ -f "$file" ]; then
        echo "O arquivo $file existe."
    elif [ -d "$file" ]; then
        echo "O diretório $file existe."
    else
        echo "Algo deu errado."
    fi
else
    encontrado=false
    while IFS= read -r linha; do
        if [[ -n "$linha" && ! "$linha" =~ "directory" ]]; then
            encontrado=true
            break
        fi
    done < <(find / -type f -name "$file" -exec file {} \; 2>/dev/null)
    
    if [ "$encontrado" = true ]; then
        echo "O arquivo $file foi encontrado."
    else
        echo "O arquivo $file não foi encontrado."
    fi
fi

