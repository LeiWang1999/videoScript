#!/bin/bash
#mp4重命名为mkv
filelist=$(find *.mkv)
OLDIFS="$IFS"
IFS=$"\n"
for filename in *.mp4
do
	mv ${filename}.mp4 ${filename}.mkv
done
IFS=$OLDIFS

