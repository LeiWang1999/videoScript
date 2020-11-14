filelist=$(find *.rmvb)
OLDIFS="$IFS"
IFS=$"\n"
for filename in *.rmvb
do
	    ffmpeg -i $filename -c:v libx264 -c:a aac -strict -2 "${filename%.*}".mp4
    done
    IFS=$OLDIFS

