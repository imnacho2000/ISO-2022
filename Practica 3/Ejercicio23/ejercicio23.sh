#!/bin/bash

arreglo=(2 4 6 7 9 10)
declare -a arreglo_impar
for valor in ${arreglo[@]}
do
	if [ $(expr $valor % 2) -ne 0 ]
	then
		let resultado++
		arreglo_impar=("${arreglo_impar[@]}" $valor)
	else
		echo "Par: $valor"
	fi
done

echo "Cantidad de impares $resultado, Impares: ${arreglo_impar[@]}"
