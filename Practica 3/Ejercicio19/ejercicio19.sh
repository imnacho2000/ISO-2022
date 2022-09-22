#!/bin/bash

menu(){
	select opcion in Ejercicio3 Ejercicio12A Ejercicio12B Salir
	do
		case $opcion in
			"Ejercicio3")
				$(sh | find $HOME -name "ejercicio3.sh")
				;;
			"Ejercicio12A")
				echo "Ejecutando Ejercicio 12 A"
				$(sh | find $HOME -name "ejercicio12.sh")
				;;
			"Ejercicio12B")
				echo "Ingrese dos parametros de tipo integer par su respectiva suma, resta, multiplicacion y division"
				read uno dos
				resultado=$(find $HOME -name "ejercicio12B.sh")
				bash "$resultado" $uno $dos 
				;;
			"Salir")
				echo "Saliendo!"
				exit 0
				;;
			*)
				echo "Opcion no valida"
		esac		
	done
}

menu

