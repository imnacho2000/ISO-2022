#!/bin/bash

if [ $# -ne 3 ] 
then
	echo "Debe ingresar el nombre del archivo, la operacion (-b para concatenar al principio y -a para concatenar al final) y el nombre nuevo!"
	exit 1
fi

case $2 in
       	"-b")
	for file in $(ls $1)
	do
		mv $1/$file  $1/$3$file
	done	
	echo "Renombres realizados!"
	exit 0
	;;
	"-a")

		for file in $(ls $1)
       		do
               		mv $1/$file  $1/$file$3
       		done
		echo "Renombres realizados!"
		exit 0
		;;
	*)
		echo "Opcion de operacion incorrecta!"
		exit 1
		;;
esac




