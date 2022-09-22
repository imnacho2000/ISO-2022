#!/bin/bash

menu(){
	select opcion in $(ls $pwd) salir
	do  
		if [ $opcion == "salir" ]
        	then
                	exit 0
        	else
                	if [ -d $opcion ]
                	then
                        	cd $opcion
                		menu
			else
                        	echo "Ejectuando $opcion"
                       		bash $opcion
                	fi
        	fi
	done
}

menu
