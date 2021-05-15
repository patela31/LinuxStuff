#! /bin/bash

while true ; do
	clear
	echo "Choose 1, 2 or 3"
	echo "1: Logged in users"
	echo "2: Date in 90 days"
	echo "3: Quit"
	read -sn1
	case "$REPLY" in 
		1) w;;
		2) date --date "90 days";;
		3) exit 0;;
		*) echo "Selection not recognised, please re-enter":x!
	esac
	read -n1 -p "Press any key to contine"
done
