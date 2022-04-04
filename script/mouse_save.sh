#!/bin/bash

file="/ram/mouse_position"

i=$(cat $file || echo "0 0,1 1")
p=$(echo "$i" | sed "s/,.*$//")
s=$(echo "$i" | sed "s/^.*,//")
m=$(xdotool getmouselocation | sed "s/ s.*$// ; s/.://g")

if [ "$p" = "$m" ]; then
	#already saved
	echo "$p,$s" > $file
else
	echo "$m,$p" > $file
fi

#echo "" > /media/ramdisk/mouse_position

##for i in `seq $1 2>/dev/null || echo 1`
#for i in `if [[ -n $1 ]]; then seq $1; else echo 1; fi`
#do
	#echo "ici"
	#xdotool getmouselocation | sed 's/x://;s/y://;s/ s.*$//;s/ /_/' >> /media/ramdisk/mouse_position & sleep 0.05
#done
