#! /bin/bash

echo "This is a test $$"
count=1
while [ $count -le 10 ] ; do 
	echo "Loop #$count"
	sleep 10
	count=$[ $count + 1 ]
done
echo "End of...."

