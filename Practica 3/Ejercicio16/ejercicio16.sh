#!/bin/bash

if [ $# -ne 1 ]
then
	echo "ERROR debe ingresar por parametro el nombre de la extension!"
	exit 1
fi

if [ $(find $HOME -name "*.$1" | wc -l) -ge 1 ]
then
	echo "Se encontraron: $(find $HOME -name "*.$1" | wc -l) coincidencias" 
	touch "reporte.txt"
	resultado=$(find $HOME -name "*.$1" | wc -l)
	resultado_nombre=$(who | cut -d: -f 1)
	echo ${resultado_nombre} ${resultado} >> reporte.txt
	exit 0
else
	echo "ERROR no se encontro ningun archivo con esa extension"
	exit 1
fi	
