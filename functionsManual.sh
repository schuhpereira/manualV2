#!/bin/bash

function executarOpcao {

	case $1 in
	0)
		mostrarMenuOpcoes
		;;
	1)
		pesquisar
		;;
	2)	
		incluir
		;;
	3)	
		editar
		;;
	4)
		excluir
		;;
	5)
		listar
		;;
	
	*)
		echo ""		
		echo "Você digitou uma opção inválida."
		echo ""
		;;
	esac
	
}

function mostrarMenuOpcoes {
	
	echo "-----------------------------------------------------------"
	echo "Menu de opções:"
	echo ""
	echo "1 - Pesquisar um comando."
	echo "2 - Incluir um comando."
	echo "3 - Editar um comando."
	echo "4 - Excluir um comando."
	echo "5 - Listar comandos existentes."
	echo ""
}

# FUNÇOES 

# FUNÇÃO PARA PESQUISAR O ARQUIVO DO COMANDO.
function pesquisar {
	# Diretório que serão salvos os arquivos
	DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"

	# Lista os arquivos dentro do diretório.
	gnome-search-tool --path=$DIR "*.txt"
}

# FUNÇÃO QUE INCLUI OS DADOS. IRÁ ABRIR UMA JANELA, COM A OPÇÃO DE SALVAR ONDE DESEJAR.
function incluir {

# VARIAVEL PARA NOMEAR O ARQUIVO
NOME="$1"

# Diretório que serão salvos os arquivos
DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"

# COMANDO QUE ABRE UM NOVO ARQUIVO PARA ADICIONAR UM NOVO TEXTO.
	cd /home/schuh/Arquivos/Scripts/manual/comandos
	nano 
}

# FUNÇÃO PARA EDITAR O TEXTO DENTRO DO ARQUIVO.
function editar {
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
}

# FUNÇÃO QUE EXCLUIR ARQUIVOS.
function excluir {
	# Diretório que serão salvos os arquivos
	DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"
	
	echo "Antes de excluir um arquivo, verifique o nome corretamente."
	echo ""
	echo "Informe o nome do arquivo que deseja excluir."
	read NOME
	sudo rm $DIR$NOME
}

# FUNÇÃO PARA LISTAR ARQUIVOS DENTRO DO DIRETÓRIO.
function listar {
	# Diretório que serão salvos os arquivos
	DIR="/home/schuh/Arquivos/Scripts/manual/comandos/"
	echo ""
	echo "### ABAIXO ESTÃO OS ARQUIVOS SALVOS EM: $DIR ###"
	echo ""
	ls $DIR
	echo ""
}