#!/bin/zsh

file="/ram/mouse_position"

i=$(cat $file || echo "0 0,1 1")
p=$(echo "$i" | sed "s/,.*$//")
s=$(echo "$i" | sed "s/^.*,//")
m=$(xdotool getmouselocation | sed "s/ s.*$// ; s/.://g")

if [ $p = $m ]; then
	xdotool mousemove $(echo "$s")
else
	xdotool mousemove $(echo "$p")
	echo "$p,$m" > $file
fi



#for i in `cat /media/ramdisk/mouse_position`
#do
#xdotool mousemove `echo $i | sed "s/_/ /"` & sleep 0.05
#done

