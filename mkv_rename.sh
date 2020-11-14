#!/bin/bash

filenum=$(ls -l |grep "mkv"|wc -l)
echo "Targent File Number is "  $filenum

declare -i index
index=0

ls | grep "mkv"|while read eachfile
do
	index=index+1;
	targetName=$index'.mkv'
	echo "Origin filename is " $eachfile
	mv "$eachfile" $targetName 
	echo "Result filename is " $targetName	
done

