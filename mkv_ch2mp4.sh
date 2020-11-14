#!/bin/bash
#mkv视频转mp4
filelist=$(find *.mkv)
OLDIFS="$IFS"
IFS=$"\n"
for filename in *.mkv
do
	    ffmpeg -i $filename -c:v libx264 -c:a aac -strict -2 "${filename%.*}".mp4
    done
    IFS=$OLDIFS
