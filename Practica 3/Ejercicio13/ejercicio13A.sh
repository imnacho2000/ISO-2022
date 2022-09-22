#!/bin/bash

for var in {0..100}
do 
	echo "Numero $var y su cuadarado es: $(expr $var \* $var)"
done	
