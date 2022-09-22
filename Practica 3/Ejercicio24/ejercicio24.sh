#!/bin/bash

arreglo=(1 80 65 35 2)
arreglo2=(5 98 3 41 8)

fila=0
for var in ${arreglo[@]}
do
	echo "La suma de la fila $fila: $(expr ${arreglo[$fila]} + ${arreglo2[$fila]})" 
	let fila++
done
