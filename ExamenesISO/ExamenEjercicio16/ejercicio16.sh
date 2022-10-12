#!/bin/bash

arreglo=( $(awk -F: '{ print $1}' /etc/passwd) )

existe(){
	encontro=0
	for users in ${arreglo[@]}
	do
		if [ $users = $1 ]
		then
			echo "Se encontro el usuario $users"
			echo "1"
			let encontro++
			break
		fi
	done

	if [ $encontro -eq 0 ]
	then
		echo "El usuario no existe!"
		echo "2"
	fi	
}


ejecuta(){
	encontro=0
	ejecuciones=( $(ps -u $1 | cut -d ":" -f3 | cut -d " " -f2) )
	for procesos in ${ejecuciones[@]}
	do
		if [ $procesos = $2 ]
		then
			let encontro++
			echo "1"
			exit 0
		fi
	done

	if [ $encontro -eq 0 ]
	then
		echo "2"
	fi
}

cantidad(){
	echo "Resultado: ${#arreglo[@]}"
}

elementos(){
	echo "Resultado: ${arreglo[@]}"
}


select opcion in cantidad ejecuta elementos existe
do
	case $opcion in
		"cantidad")
			cantidad
			;;
		"ejecuta")
			read nombre && read ejecucion && ejecuta $nombre $ejecucion
			;;
		"elementos")
			elementos
			;;
		"existe")
			read nombre && existe $nombre 
			;;
		*)
			echo "opcion invalida"
			exit 1
	esac
done

