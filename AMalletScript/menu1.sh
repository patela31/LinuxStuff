#! /bin/bash

while true ; do
	clear
	echo "Choose 1, 2 or 3"
	echo "1: Calendar"
	echo "2: Date"
	echo "3: Quit"
	read -sn1
	case "$REPLY" in 
		1) cal;;
		2) date;;
		3) exit 0;;
	esac
	read -n1 -p "Press any key to contine"
done
