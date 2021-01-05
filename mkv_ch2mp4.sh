#!/bin/bash
#mkv视频转mp4
bitrate=$1
filelist=$(find *.mkv)
if [ ! $bitrate ]; then 
for filename in *.mkv
do
	ffmpeg -i $filename -c:v libx264 -c:a aac -strict -2 "${filename%.*}".mp4
done
else
for filename in *.mkv
do
	ffmpeg -i $filename -c:v libx264 -c:a aac -strict -2 -b 1500k "${filename%.*}".mp4
done
fi
