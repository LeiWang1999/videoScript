#!/bin/bash
filenum=$(ls -l |grep "mp4"|wc -l)

echo "Targent File Number is "  $filenum

declare -i index
index=0

ls | grep "mp4"|while read eachfile
do
	index=index+1;
	targetName=$index'.mp4'
	echo "Origin filename is " $eachfile
	mv "$eachfile" $targetName 
	echo "Result filename is " $targetName	
done

