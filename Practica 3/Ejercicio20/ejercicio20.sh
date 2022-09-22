#!/bin/bash

declare -a pila

select opcion in push pop length print salir
do
	case $opcion in
		"push")
			echo "Ingrese un valor para apilar"
			read valor
			pila=("${pila[@]}" $valor)
			;;
		"pop")
			echo "Desapilando la pila"
			unset pila[-1]
			;;
		"length")
			echo "Longitud: ${#pila[@]}"
			;;
		"print")
			echo "Elementos: ${pila[@]}"
			;;
		"salir")
			echo "saliendo"
			exit 0
			;;
		*)
			echo "Opcion invalida"
			;;
	esac
done
