#!/bin/bash


inicializar(){
	array_vacio=()
}

agregar(){
	echo "Ingrese un elemento para insertar en el vector!"
	read elemento
	array_vacio=( "${array_vacio[@]}" $elemento )
}

eliminar_en(){
	echo "Ingrese una posicion para eliminar"
	read pos
	if [ $pos -le ${#array_vacio[@]} ]
	then
		if [ ! -z ${array_vacio[$pos]} ]
		then
			unset array_vacio[$pos]
		else
			echo "La posicion esta vacia"
		fi
	else
		echo "Posicion invalida"
	fi
}

longitud(){
	echo "Longitud: ${#array_vacio[@]}"
}

inicializar_con_valores(){
	echo "Ingrese longitud y un numero para cargarlo"
	read long num
	vector=()
	for ((i=0; i < $long ; i++))
	do
		vector=("${vector[@]}" $num)
	done
	pos=0
	for elem in ${vector[@]}
	do
		echo "Elemento en la pos $pos: $elem"
		let pos++
	done	
}

imprimir(){
       	echo "Elementos: ${array_vacio[@]}"
}



select opcion in inicializar agregar_elem eliminar_elem longitud imprimir inicializar_con_valores
do
	case $opcion in
		"inicializar")
			inicializar
			;;
		"agregar_elem")			
			agregar
			;;
		"eliminar_elem")
			eliminar_en
			;;
		"longitud")
			longitud
			;;
		"imprimir")
			imprimir
			;;
		"inicializar_con_valores")
			inicializar_con_valores
			;;
		*)
			echo "No se ingreso una opcion correctamente!"
			exit 1
	esac
done

