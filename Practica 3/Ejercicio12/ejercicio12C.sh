#!/bin/bash

if [[ ! -z $1 ]] & [[ ! -z $2 ]] & [[ ! -z $3 ]] 
then
	case $2 in 
		"+")
		echo "Resultado: $(expr $1 + $3)"
		;;
	"-")
		echo "Resultado: $(expr $1 - $3)"
		;;
	"*")
		echo "Resultado: $(expr $1 \*  $3)"
		;;
	"/")
		echo "Resultado: $(expr $1 / $3)"
		;;
	*)
		echo "Operando invalido"
		exit 1
	esac
	exit 0
else
	echo "Error debe ingresar el primer numero, operador y el segundo numero!"
	exit 1
fi
