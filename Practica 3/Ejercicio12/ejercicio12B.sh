#!/bin/bash
re='^[0-9]+$'
if [[ ! -z "$1" ]] & [[ $1 =~ $re ]] && [[ ! -z "$2" ]]  & [[ $2 =~  $re ]]
then
	echo "Suma: $(expr $1 + $2)"
	echo "Resta: $(expr $1 - $2)"
	echo "Multiplicacion: $(expr $1 \* $2)"
	echo "Division; $(expr $1 / $2)"
	if [ $1 -gt $2 ] 
	then
		echo "El numero mas grande es: $1"
	else
		echo "El numero mas grande es: $2"
	fi
else
	echo "Error debe ingresar los 2 parametros ENTEROS para su respectiva suma, resta, multiplicacion y division"
	exit 1
fi
