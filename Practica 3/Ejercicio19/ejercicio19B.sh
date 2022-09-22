#!/bin/bash

select opcion in $(ls $pwd) salir
do
	if [ $opcion == "salir" ]
	then
		exit 0
	else
	        echo "Ejectuando $opcion"
		chmod +x ./$opcion
	fi
done
