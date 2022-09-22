#!/bin/bash
# Script que pide 2 numeros y hace la respectiva suma, resta, multiplicacion y division

echo "Escriba el numero 1:"
read uno
echo "Escriba el numero 2: "
read dos

echo "La suma es: $(expr $uno + $dos)"

echo "La resta es: $(expr $uno - $dos)"

echo "La multiplicacion es: $(expr $uno \* $dos)"

echo "La division es: $(expr $uno / $dos)"

if [ $uno -gt  $dos ]
then
	echo "El numero $uno es el mas grande"
else
	echo "El numero $dos es el mas grande"
fi
