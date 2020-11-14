#/bin/bash
#rmvb视频批量重命名

filenum=$(ls -l |grep "rmvb"|wc -l)

echo "Targent File Number is "  $filenum

declare -i index
index=0

ls | grep "rmvb"|while read eachfile
do
	index=index+1;
	targetName=$index'.rmvb'
	echo "Origin filename is " $eachfile
	mv "$eachfile" $targetName 
	echo "Result filename is " $targetName	
done

