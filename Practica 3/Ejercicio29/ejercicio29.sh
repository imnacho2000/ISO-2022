#!/bin/bash

arreglo=()
for var in $(find $HOME -name "*.doc")
do
	arreglo=( "${arreglo[@]}" "$var" )
done

verArchiv(){
	echo "Ingrese nombre de archivo"
	read arch
	encontro=0
	for var in ${arreglo[@]} 
	do
		if [[ $var =~ .*$arch.* ]]
		then
			echo "Archivo: $var"
			let encontro++
			break
		fi
	done
	if [ $encontro -eq 0 ]
	then
		echo "No se encontro el archivo!"
		exit 1
	fi
}

borrarArch(){
	echo "Ingrese nombre del archivo a borrar"
	read arch
	result=0
	pos=0
	for var in ${arreglo[@]}
	do
		if [[ $var =~ .*$arch.* ]]
		then
			echo "Por favor ingrese una opcion!"
			select opcion in borrarLogicamente borrarFisicamente
			do
				case $opcion in
					"borrarLogicamente")
						unset arreglo[$pos]
						menu
						;;
					"borrarFisicamente")
						unset arreglo[$pos]
						rm $var
						menu
						;;
					*)
						echo "Opcion incorrecta"
						menu
				esac
			done
			break
			let result++
		fi
		let pos++
	done
	if [ $result -eq 0 ]
	then
		echo "El archivo no se encontro!"
		exit 10
	fi
}

menu(){
	select opcion in verArchivo cantidadArchivo borrarArchivo
do
	case $opcion in
		"verArchivo")
			verArchiv
			;;
		"cantidadArchivo")
			echo "Cantidad de archivos: ${#arreglo[@]}"
			;;
		"borrarArchivo")
			borrarArch		
			;;
		*)
			echo "Opcion incorrecta!"
			exit 1
			;;
	esac
done
}

menu
	
