#! /bin/bash
x=0
for user in $*; do 
	x=$((x+1))
	echo "User $x = $user"
done

