#!/bin/bash

source "functionsManual.sh"

opcaoUsuario=0

echo ""
echo "#### MANUAL DE COMANDOS ####"
echo ""
echo "Hoje é" | date 
echo ""

while [[ "$opcaoUsuario" != "S" && "$opcaoUsuario" != "s" ]]
do
	echo "Informe sua opção: (0 => menu de opções  S => Sair):"
	read opcaoUsuario
	
	if [[ "$opcaoUsuario" != "S" && "$opcaoUsuario" != "s" ]]
	then	
		executarOpcao $opcaoUsuario
	fi
done 

echo "Tchau! Volte sempre!!!"
sleep 3
clear