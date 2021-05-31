#! /bin/bash

while true ; do
	clear
	echo "Choose 1, 2, 3 or 4"
	echo "1: List publishers"
	echo "2: Date in 90 days"
	echo "3: Quit"
	read -sn1
	case "$REPLY" in
		1)  az vm extension image list --query "[].publisher" -o tsv | sort -u | more;; 
		2) prompt_user();;
		3) date --date "90 days";;
		3) exit 0;;
		*) echo "Selection not recognised, please re-enter"
	esac
	read -n1 -p "Press any key to contine"
done
