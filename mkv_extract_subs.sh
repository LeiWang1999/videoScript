#!/bin/bash
# mkv视频转mp4带字幕
streamIdx=$1
filelist=$(find *.mkv)
for filename in *.mkv
do
ffmpeg -i $filename -map 0:s:$streamIdx "${filename%.*}".ass
done
