#!/bin/bash
# Este scipt pide nombre y apellido al usuario e imprimiendo informacion, este es el del ejercicio 3 de la practica de ISO del ano 2022

echo "Introduzca su nombre y apellido: "
read nombre apellido
echo "Fecha y hora actual: $(date)"
echo "Su apellido y nombre es: $apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es: $(pwd)"
echo "Esto imprime HOME: $HOME"
