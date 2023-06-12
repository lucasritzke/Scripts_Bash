#!/bin/bash 
new_datetime=$(date -d "+1 hour" +%y-%m-%d)
new_datetime2=$(date -d "+1 day +1 hour" +%y-%m-%d)
MENU_PRINCI() {
	if [[ $1 ]]
	then 
		echo -e "\n$1"
	fi
	clear
	echo -e "Bem-vindo Porao comedy club\n\nDeseja comprar o seu ingresso?\nShows de hoje!!!\n1. Irineu Nicolleti [Show do Tanso]\n2.Natanael Alves, Cadu Silva [Reclame Aqui]\n\nAmanha!!\n3.Irineu Nicolleti, Gustavo Furlin e Gordinho [Os Tres do Sul]\n4.Segundinho Show [Como e que e rapaz]\n5.Andressa Bragato [Conversando com o publico]"
	read select_mp

case $select_mp in
	1) show_1 ;;
	2) show_2 ;;
	3) show_3 ;;
	4) show_4 ;;
	4) show_5 ;;
	8) leave ;;
	*) MENU_PRINCI ;;
esac
}
show_1() {
	clear
	echo -e "Bem-vindo a bilheteria de Irineu Nicolleti [Vamu quiridu]\n\nVoce deseja comprar quantos ingressos para essa noite do dia $new_datetime com o show do Tanso\n\nO Valor de um bilhete e de 40R$ !\nQuantos bilhetes deja comprar?"
	read quantidade
	valor=$(( 40 * $quantidade ))
	random_number=$((RANDOM % 100 + 1))
	echo -e "Aceitamos somente pix o valor de $quantidade ficou $valor deseja efetuar o pagamento??\nSe sim digite 1 e se nao digite 2"
	read escolha 
	if [ $escolha -eq 1 ]; then 
		if [ $random_number -le 10 ]; then 
			echo -e "Pagamento Recusado\nTente efetuar a compra novamente"
			show_1
		else
			echo -e "Pagamento efetuado com sucesso..\nAguardamos voce no porao comedy as $new_datetime !!\nVoltando ao menu principal"
			sleep 2s
		fi
	elif [ $escolha -eq 2 ]; then 
		echo -e "Voce nao efetuou o pagamento\nVoce ira voltar ao menu principal!!"
		sleep 2s
	else
		echo "Algo deu errado"
	fi
	MENU_PRINCI
}
show_2() {
        clear
        echo -e "Bem-vindo a bilheteria do show \n\nVoce deseja comprar quantos ingressos para essa noite do dia $new_datetime2 com o show do Reclame aqui\n\nO Valor de um bilhete e de 35R$ !\nQuantos bilhetes deja comprar?"
        read quantidade
	valor=$(( 35 * $quantidade ))
        random_number=$((RANDOM % 100 + 1))
        echo -e "Aceitamos somente pix o valor de $quantidade ficou $valor deseja efetuar o pagamento??\nSe sim digite 1 e se nao digite 2"
        read escolha
        if [ $escolha -eq 1 ]; then
                if [ $random_number -le 10 ]; then
                        echo -e "Pagamento Recusado\nTente efetuar a compra novamente"
			sleep 2s
                        show_2
                else
                        echo -e "Pagamento efetuado com sucesso..\nAguardamos voce no porao comedy as $new_datetime !!\nVoltando ao menu principal"
                        sleep 2s
                fi
        elif [ $escolha -eq 2 ]; then
                echo -e "Voce nao efetuou o pagamento\nVoce ira voltar ao menu principal!!"
                sleep 2s
        else
                echo "Algo deu errado"
        fi
	MENU_PRINCI
}
show_3() {
        clear
        echo -e "Bem-vindo a bilheteria do show Os tres do sul\n\nVoce deseja comprar quantos ingressos para essa noite do dia $new_datetime2 com o show Os tres do sul\n\nO Valor de um bilhete e de 35R$ !\nQuantos bilhetes deja comprar?"
        read quantidade
	valor=$(( 35 * $quantidade ))
        random_number=$((RANDOM % 100 + 1))
        echo -e "Aceitamos somente pix o valor de $quantidade ficou $valor deseja efetuar o pagamento??\nSe sim digite 1 e se nao digite 2"
        read escolha
        if [ $escolha -eq 1 ]; then
                if [ $random_number -le 10 ]; then
                        echo -e "Pagamento Recusado\nTente efetuar a compra novamente"
                        sleep 2s
                        show_2
                else
                        echo -e "Pagamento efetuado com sucesso..\nAguardamos voce no porao comedy as $new_datetime2 !!\nVoltando ao menu principal"
                        sleep 2s
                fi
        elif [ $escolha -eq 2 ]; then
                echo -e "Voce nao efetuou o pagamento\nVoce ira voltar ao menu principal!!"
                sleep 2s
        else
                echo "Algo deu errado"
        fi
	MENU_PRINCI
}
show_4() {
        clear
        echo -e "Bem-vindo a bilheteria do show Como e que e rapaz\n\nVoce deseja comprar quantos ingressos para essa noite do dia $new_datetime2 com o show Como e que e rapaz \n\nO Valor de um bilhete e de 35R$ !\nQuantos bilhetes deja comprar?"
        read quantidade
	valor=$(( 35 * $quantidade ))
        random_number=$((RANDOM % 100 + 1))
        echo -e "Aceitamos somente pix o valor de $quantidade ficou $valor deseja efetuar o pagamento??\nSe sim digite 1 e se nao digite 2"
        read escolha
        if [ $escolha -eq 1 ]; then
                if [ $random_number -le 10 ]; then
                        echo -e "Pagamento Recusado\nTente efetuar a compra novamente"
                        sleep 2s
                        show_2
                else
                        echo -e "Pagamento efetuado com sucesso..\nAguardamos voce no porao comedy as $new_datetime2 !!\nVoltando ao menu principal"
                        sleep 2s
                fi
        elif [ $escolha -eq 2 ]; then
                echo -e "Voce nao efetuou o pagamento\nVoce ira voltar ao menu principal!!"
                sleep 2s
        else
                echo "Algo deu errado"
        fi
	MENU_PRINCI
}
show_5() {
        clear
        echo -e "Bem-vindo a bilheteria do show Conversando com a plateia de Andressa Bragato\n\nVoce deseja comprar quantos ingressos para essa noite do dia $new_datetime2 com o show Conversando com a plateia de Andressa Bragato\n\nO Valor de um bilhete e de 35R$ !\nQuantos bilhetes deja comprar?"
        read quantidade
	valor=$(( 35 * $quantidade ))
        random_number=$((RANDOM % 100 + 1))
        echo -e "Aceitamos somente pix o valor de $quantidade ficou $valor deseja efetuar o pagamento??\nSe sim digite 1 e se nao digite 2"
        read escolha
        if [ $escolha -eq 1 ]; then
                if [ $random_number -le 10 ]; then
                        echo -e "Pagamento Recusado\nTente efetuar a compra novamente"
                        sleep 2s
                        show_2
                else
                        echo -e "Pagamento efetuado com sucesso..\nAguardamos voce no porao comedy as $new_datetime2 !!\nVoltando ao menu principal"
                        sleep 2s
                fi
        elif [ $escolha -eq 2 ]; then
                echo -e "Voce nao efetuou o pagamento\nVoce ira voltar ao menu principal!!"
                sleep 2s
        else
                echo "Algo deu errado"
        fi
	MENU_PRINCI
}
MENU_PRINCI
