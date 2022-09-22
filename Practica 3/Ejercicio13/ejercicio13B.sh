#!/bin/bash
select var in Listar DondeEstoy QuienEsta
do
	case $var in
		"Listar")
			echo $(ls)
			;;
		"DondeEstoy")
			echo $(pwd)
			;;
		"QuienEsta")
			echo $(who)
			;;

		*)
			echo "ERROR: $var Opcion no valida"
			exit 1
		esac
exit 0
done

