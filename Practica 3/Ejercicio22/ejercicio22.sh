#!/bin/bash

vector=(10 3 5 7 9 3 5 4)
primero=${vector[0]}
for num in "${vector[@]:1}"
do
	resultado=$(expr $primero \* $num )
	primero=$resultado	
done

echo "Resultado: $resultado"
