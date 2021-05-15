#!/bin/bash

for file in $(ls | sort); do
	if [ -d $file ]
	then
		echo "$file is a directory"
	fi
	if [ -f $file ]
	then
		echo "$file is a file"
	fi
done
