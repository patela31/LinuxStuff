#! /bin/bash

for line in `cat /etc/passwd`
do 
 echo ${line} | cut -d ':' -f2
done

