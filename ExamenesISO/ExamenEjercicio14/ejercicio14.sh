#!/bin/bash


cont=0

ok=true

while [ $ok ]
do
	if [ $(ps cax | grep apache | wc -l) -eq 1 ]
	then
		let cont++
		echo "Esta ejecutandose $cont"
		if [ $cont -eq 10 ]
		then
			echo "Se ejecuto $cont veces"
			exit 50
		fi
		$ok = false
	else
		echo "No se esta ejecutando"
		sleep 5s
	fi
done
