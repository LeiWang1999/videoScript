#!/bin/bash
# mkv视频转mp4带字幕
bitrate=$1
filelist=$(find *.mkv)
if [ ! $bitrate ]; then
for filename in *.mkv
do
ffmpeg -i $filename -c:v libx264 -c:a aac -vf subtitles="${filename%.*}".ass -c:a aac -strict -2 "${filename%.*}".mp4
done
else
for filename in *.mkv
do
ffmpeg -i $filename -b $bitrate -c:v libx264 -c:a aac -vf subtitles="${filename%.*}".ass -c:a aac -strict -2 "${filename%.*}".mp4
done
fi

