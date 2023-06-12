#!/bin/bash 

echo "Qual o arquivo que deseja verificar??"
read file

if ! [ -f $file ]; then
       echo "O arquivo nao existe"
fi

file_name=$(basename "$file")

num_word=$(cat "$file" | wc -w)

num_lines=$(cat "$file" | wc -l)

num_caracteres=$(cat "$file" | wc -c)

echo -e "The file name is: "$file_name"\nThe number word is: "$num_word"\nThe number lines is: "$num_lines"\nThe number characters is: "$num_caracteres"\nThis is all informations from this file."
