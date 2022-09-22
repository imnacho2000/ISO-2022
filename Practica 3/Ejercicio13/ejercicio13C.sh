#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Debe indicar nombre del archivo"
	exit 1
fi

if [ ! -e $1 ]
then
	echo "No se encontro el archivo/directorio!, creando un directorio en $(pwd)"
	mkdir "$1"
	exit 0
	elif [ -d $1 ]
	then
		echo "$1 Es un directorio"
	else
		echo "$1 Es un archivo"
	exit 0
fi

