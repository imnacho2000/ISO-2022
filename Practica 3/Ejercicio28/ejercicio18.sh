#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Debe ingresar los parametros para buscar el directorio!"
	exit 1
fi 

if [ $(find $HOME -type d -name "$1" | wc -l) -eq 1 ]
then
	total=0
	echo "Se encontro el directorio"
	cd "$(find $HOME -type d -name "$1")"
	echo "$(pwd)"
	for var in $(ls)
	do	    
		if [ -w $var ] && [ -r $var ]
	    	then	     
			let total++
		fi
	done
	echo "La cantidad de archivos con permisos por el usuario $(whoami) es: $total"
else
	echo "No se encontro el directorio!"
	exit 4   
fi
