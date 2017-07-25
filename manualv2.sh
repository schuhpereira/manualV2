#!/bin/bash

while [[ true ]]; do
	# Menu mostrando as opções 
opcao=$(zenity --width=200 --height=230 --list --column "Escolha uma das opções" --title="Manual.V.2" \
		"Adicionar" \
		"Editar" \
		"Excluir" \
		"Listar" \
		"Pesquisar" \
		"Sair" )

case "$opcao" in
	Adicionar )

		# VARIAVEL PARA NOMEAR O ARQUIVO
		NOME="$1"

		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"

		# COMANDO QUE ABRE UM NOVO ARQUIVO PARA ADICIONAR UM NOVO TEXTO.
			nano $DIR
	;;

	Editar )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"

		# Lista os arquivos dentro do diretório.
		#gnome-search-tool --path=$DIR 
		ls $DIR 
		echo ""
			echo "Qual arquivo você deseja editar?"
		# LE O NOME DO ARQUIVO QUE SERÁ EDITADO.
		read arquivo
		# ABRE O ARQUIVO.
			nano $DIR$arquivo
	;;

	Excluir )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"
		
			echo "Antes de excluir um arquivo, verifique o nome corretamente."
			echo ""
			echo "Informe o nome do arquivo que deseja excluir."
				read NOME
					sudo rm $DIR$NOME
	;;

	Listar )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"
		
		echo ""
		echo "### ABAIXO ESTÃO OS ARQUIVOS SALVOS EM: $DIR ###"
		echo ""
			ls $DIR | yad --info --width=200 --height=230 --list --column='Arquivos' $(cat $DIR)
		echo ""
		;;

	Pesquisar )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"

		# Lista os arquivos dentro do diretório.
			gnome-search-tool --path=$DIR "*.txt"
		;;

	* ) 
		break
	;;
esac

done