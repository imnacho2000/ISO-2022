#!/bin/bash

arreglo=($(awk -F: '{ print $1}' /etc/passwd))

existe(){
	echo "Ingrese un nombre de usuario: "
	read nom
	encontro=0
	
	for ((i = 0 ; i < ${#arreglo[@]} ; i++))
	do
		if [ ${arreglo[$i]} == $nom ] 
		then
			echo "Indice del usuario encontrado: $i"
			let encontro++	
			break
		fi
	done

	if [ $encontro -eq 0 ]
	then
		echo "No se encontro el usuario"
		exit 1
	fi
}

eliminar(){
	echo "Ingrese un nombre de usuario a eliminar: "
	read nom
	encontro=0

	for ((i = 0; i < ${#arreglo[@]} ; i++))
	do
		if [ ${arreglo[$i]} == $nom ]
		then
			echo "Se elimino al usuario del arreglo"
			unset arreglo[$i]
			let encontro++
			break
		fi            
	done

	if [ $encontro -eq 0 ]
	then
		echo "No se encontro el usuario"
		exit 2
	fi


}

usuarios(){
	echo "Ingrese un patron: "
	read pat

	for ((i = 0; i < ${#arreglo[@]} ; i++))
	do
		if [[ ${arreglo[i]} =~ $pat ]]
		then
			echo "${arreglo[$i]}"
		fi
	done
}


select opcion in existe eliminar usuarios_con_patron cantidad usuarios
do
	case $opcion in
		"existe")
			existe
			;;
		"eliminar")
			eliminar
			;;
		"usuarios_con_patron")
			usuarios
			;;
		"cantidad")
			echo "Cantidad: ${#arreglo[@]}"
			;;
		"usuarios")
			echo "Usuarios: ${arreglo[@]}"
			;;
		*)
			echo "Opcion invalida"
			;;
	esac
done


