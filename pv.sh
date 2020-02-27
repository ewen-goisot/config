#!/bin/sh

echo "\e[1;033m$(file -b $1 2>/dev/null)\e[0m"
case "$1" in
	*.tar*) tar tf "$1";;
	*.zip) unzip -l "$1";;
	*.rar) unrar l "$1";;
	*.7z) 7z l "$1";;
	*.pdf) pdftotext "$1" -;;
	*.odt|*.ods|*.odp|*.sxw) odt2txt "$1";;
	*.png|*.jpg|*.jpeg|*.JPG) img2txt -f utf8 -d none -W 80 "$1";;
	*.mp3|*.opus|*.m4a|*.aac|*.wav|*.mp4|*.avi|*.webm|*.mkv|*.wma|*.mov) mediainfo "$1";;
	*.iso|*.MTS)echo "other";;
	*.x|*.out|*.bin) xxd "$1";;
	#*.txt|*.c|*.cpp|*.h|*.hpp|*.sh)echo "\e[1;033m$(wc $1 | awk '{print $1 "l " $2 "w " $3 "c"}')\e[0m";
	*)echo "\e[1;033m$(wc $1 | awk '{print $1 "l " $2 "w " $3 "c"}')\e[0m";
		highlight -O ansi "$1" 2>/dev/null || cat "$1";;
esac
