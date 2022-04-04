#!/bin/bash

xdotool mousemove $(xdotool getwindowgeometry $(xdotool getwindowfocus) |
	head -2 |
	tail -1 |
	sed "s/^.*on: //;s/ (.*$/+1/;s/,/+1; /" |
	bc |
	tr "\n" " ")
