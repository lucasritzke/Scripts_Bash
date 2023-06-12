#!/bin/bash

regiao=$1

if [[ "$regiao" == "sul" || "$regiao" == "Sul" ]]; then
    echo -e "Você deve morar em: Paraná, Santa Catarina ou Rio Grande do Sul\nEm qual desses estados você mora?\n"
    read estado

    if [ "$estado" == "Paraná" ]; then
        echo "Você mora na região Sul do Brasil, no estado do $estado!"
    elif [ "$estado" == "Santa Catarina" ]; then
        echo "Você mora na região Sul do Brasil, no estado de $estado!"
    elif [ "$estado" == "Rio Grande do Sul" ]; then
        echo "Você mora na região Sul do Brasil, no estado do $estado!"
    else
        echo "$estado não está listado acima."
        exit 1
    fi

elif [[ "$regiao" == "norte" || "$regiao" == "Norte" ]]; then
    echo -e "Você deve morar em: Acre, Amapá, Amazonas, Pará, Rondônia, Roraima ou Tocantins\nEm qual desses estados você mora?\n"
    read estado

    if [ "$estado" == "Acre" ]; then
        echo "Você mora na região Norte do Brasil, no estado do $estado!"
    elif [ "$estado" == "Amapá" ]; then
        echo "Você mora na região Norte do Brasil, no estado do $estado!"
    elif [ "$estado" == "Amazonas" ]; then
        echo "Você mora na região Norte do Brasil, no estado do $estado!"
    elif [ "$estado" == "Pará" ]; then
        echo "Você mora na região Norte do Brasil, no estado do $estado!"
    elif [ "$estado" == "Rondônia" ]; then
        echo "Você mora na região Norte do Brasil, no estado de $estado!"
    elif [ "$estado" == "Roraima" ]; then
        echo "Você mora na região Norte do Brasil, no estado de $estado!"
    elif [ "$estado" == "Tocantins" ]; then
        echo "Você mora na região Norte do Brasil, no estado de $estado!"
    else
        echo "$estado não está listado acima."
        exit 1
    fi

elif [[ "$regiao" == "nordeste" || "$regiao" == "Nordeste" ]]; then
    echo -e "Você deve morar em: Alagoas, Bahia, Ceará, Maranhão, Paraíba, Pernambuco, Piauí, Rio Grande do Norte ou Sergipe\nEm qual desses estados você mora?\n"
    read estado

    if [ "$estado" == "Alagoas" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado de $estado!"
    elif [ "$estado" == "Bahia" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado da $estado!"
    elif [ "$estado" == "Ceará" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado do $estado!"
    elif [ "$estado" == "Maranhão" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado do $estado!"
    elif [ "$estado" == "Paraíba" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado da $estado!"
    elif [ "$estado" == "Pernambuco" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado de $estado!"
    elif [ "$estado" == "Piauí" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado do $estado!"
    elif [ "$estado" == "Rio Grande do Norte" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado do $estado!"
    elif [ "$estado" == "Sergipe" ]; then
        echo "Você mora na região Nordeste do Brasil, no estado de $estado!"
    else
        echo "$estado não está listado acima."
        exit 1
    fi

elif [[ "$estado" == "sudeste" || "$estado" == "Sudeste" ]]; then
    echo -e "Você deve morar em: Espírito Santo, Minas Gerais, Rio de Janeiro ou São Paulo\nEm qual desses estados você mora?\n"
    read estado

    if [ "$estado" == "Espírito Santo" ]; then
        echo "Você mora na região Sudeste do Brasil, no estado do $estado!"
    elif [ "$estado" == "Minas Gerais" ]; then
        echo "Você mora na região Sudeste do Brasil, no estado de $estado!"
    elif [ "$estado" == "Rio de Janeiro" ]; then
        echo "Você mora na região Sudeste do Brasil, no estado do $estado!"
    elif [ "$estado" == "São Paulo" ]; then
        echo "Você mora na região Sudeste do Brasil, no estado de $estado!"
    else
        echo "$estado não está listado acima."
        exit 1
    fi

elif [[ "$regiao" == "centro-oeste" || "$regiao" == "Centro-Oeste" ]]; then
    echo -e "Você deve morar em: Goiás, Mato Grosso, Mato Grosso do Sul ou Distrito Federal\nEm qual desses estados você mora?\n"
    read estado

    if [ "$estado" == "Goiás" ]; then
        echo "Você mora na região Centro-Oeste do Brasil, no estado de $estado!"
    elif [ "$estado" == "Mato Grosso" ]; then
        echo "Você mora na região Centro-Oeste do Brasil, no estado de $estado!"
    elif [ "$estado" == "Mato Grosso do Sul" ]; then
        echo "Você mora na região Centro-Oeste do Brasil, no estado do $estado!"
    elif [ "$estado" == "Distrito Federal" ]; then
        echo "Você mora na região Centro-Oeste do Brasil, no estado do $estado!"
    else
        echo "$estado não está listado acima."
        exit 1
    fi

else
	echo "Voce deve ter digitado aogum estado errado as regioes sao Sul, Centro-Oeste, Sudeste, Nordeste e Norte." 
fi
