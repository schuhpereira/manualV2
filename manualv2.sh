#!/bin/bash
#
# Criado por Eduardo Schuh Pereira
# Data da criação 21/07/17
# Data da última edição 30/07/17
#
# Script criado para criar, editar, listar, excluir e pesquisar arquivos em um diretório.


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
# Função para criar um novo arquivo.
	Adicionar )

		# VARIAVEL PARA NOMEAR O ARQUIVO
		NOME="$1"

		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manualV2/comandos/"

		# COMANDO QUE ABRE UM NOVO ARQUIVO PARA ADICIONAR UM NOVO TEXTO.
			nano $DIR
	;;
# Função para editar arquivo.
	Editar )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manualV2/comandos/"

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
# função para excluir o arquivo.
	Excluir )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manualV2/comandos/"
		
			echo "Antes de excluir um arquivo, verifique o nome corretamente."
			echo ""
			echo "Informe o nome do arquivo que deseja excluir."
				read NOME
					sudo rm $DIR$NOME
	;;
# Função para listar o arquivo.
	Listar )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manualV2/comandos/"
		
			arq=$(ls $DIR |  yad --info --width=200 --height=230 --list --title='Escolha um dos arquivos' --column='Arquivos' | cut -d'|' -f1 )
			yad --text-info --title="$arq" --width=1024 --height=768 --filename="/$DIR/$arq"
		;;
# Função para pesquisar arquivos dentro do diretório.
	Pesquisar )
		# Diretório que serão salvos os arquivos
		DIR="/home/schuh/Arquivos/Scripts/manualV2/comandos/"

		# Lista os arquivos dentro do diretório.
			gnome-search-tool --path=$DIR "*.txt"
		;;

	* ) 
		break
	;;
esac

done
