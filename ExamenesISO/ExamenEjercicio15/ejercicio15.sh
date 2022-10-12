#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Debe ingresar el tipo de grado"
	exit 1
fi

echo "Ingrese un numero"
read num

case $1 in
	"C")
	echo "Resultado: $(expr 5 \* $num - 32 / 9)"
	;;
	"F")
	echo "Resultado: $(expr 9 \* $num / 5 + 32)"
	;;
	*)
	echo "Opcion invalida"
	exit 1
esac

