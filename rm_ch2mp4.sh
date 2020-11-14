filelist=$(find *.rm)
OLDIFS="$IFS"
IFS=$"\n"
for filename in *.rm
do
	    ffmpeg -i $filename -c:v libx264 -c:a aac "${filename%.*}".mp4
    done
    IFS=$OLDIFS

