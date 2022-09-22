#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Ingrese el nombre del usuario por parametro"
	exit 1
fi



while [ $(w -s -h $1 | wc -l) -ne 1 ]
do
	sleep 10s
	echo "El usuario $1 no esta logueado!"
done

echo "El usuario $1 esta logueado!"
exit 0
