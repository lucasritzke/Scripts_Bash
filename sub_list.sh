#!/bin/bash

echo "Qual o caminho absoluto do diretório:"
read diretorio

echo "Diretório: $diretorio"

echo "Arquivos:"
arquivos=()
while IFS= read -r arquivo; do
    arquivos+=("- $arquivo")
done < <(find "$diretorio" -type f -printf "%f\n")
printf '%s\n' "${arquivos[@]}"

subdiretorios=()
while IFS= read -r subdiretorio; do
    echo ""
    echo "Subdiretório: $subdiretorio"
    echo "Arquivos:"
    subarquivos=()
    while IFS= read -r subarquivo; do
        subarquivos+=("- $subarquivo")
    done < <(find "$subdiretorio" -type f -printf "%f\n")
    printf '%s\n' "${subarquivos[@]}"
    tamanho=$(du -sb "$subdiretorio" | cut -f1)
    echo ""
    echo "Tamanho total: $tamanho bytes"
    subdiretorios+=("$subdiretorio")
done < <(find "$diretorio" -type d -not -path "$diretorio")

tamanho_total=$(du -sb "${subdiretorios[@]}" | awk '{total += $1} END {print total}')
echo ""
echo "Tamanho total ocupado pelo diretório $diretorio: $tamanho_total bytes"

