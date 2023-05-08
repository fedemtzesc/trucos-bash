#!/bin/bash

so=$(uname -r)
substring="kali"

#Revisamos si la distribucion es Kali 
if $(echo $so | grep -q $substring); then
	echo "Adios desde $substring Linux"
	sleep 3
	#Este comando cierra la terminal despues de terminar ejecucion en kali
	xdotool getactivewindow windowkill
else
	echo "Adios desde otra distribucion Linux"
	sleep 3
	#Este comando cierra la trminal despues de terminar ejecucion en mint
	kill -25 $PPID
fi




