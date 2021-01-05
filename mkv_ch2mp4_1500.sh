#!/bin/bash
# mkv视频转mp4
# 可以更换码率和字幕通道
bitrate=$1
subtitleChannel=$2
echo $bitrate
echo $subtitleChannel

filelist=$(find *.mkv)
for filename in *.mkv
do
	    ffmpeg -i $filename -c:v libx264 -c:a aac -strict -2 -b 1500k "${filename%.*}".mp4
done

