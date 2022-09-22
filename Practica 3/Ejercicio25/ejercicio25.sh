#!/bin/bash

if [ $# -ne 1 ] && [ $# -lt 2 ]
then
	echo "Ingrese los parametros para la operacion"
	exit 1
fi

declare -a vector

vector=( "${vector[@]}" $(awk -F: '{ print $1}' /etc/passwd))


case $1 in
	"-l")
		echo "Longitud: ${#vector[@]}"
		exit 0
		;;
	"-i")
		echo "Elementos: ${vector[@]}"
		exit 0
		;;
esac

if [ $1 = "-b" ] && [ $2 -ge 0 ] 
then
	if [ $2 -le ${#vector[@]} ]
	then
		if [ -z ${vector[$2]} ]
		then
			echo "No existe!"
			exit 1
		else
			echo "Elemento de la pos $2 = ${vector[$2]}"
			exit 0
		fi
	else
		echo "Posicion fuera del array"
		exit 1
	fi
else
	echo "Parametro incorrecto"
	exit 1
fi

