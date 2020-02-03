#!/bin/sh

echo "\e[1;033m$(file -b $1)\e[0m"
case "$1" in
	*.tar*) tar tf "$1";;
	*.zip) unzip -l "$1";;
	*.rar) unrar l "$1";;
	*.7z) 7z l "$1";;
	*.pdf) pdftotext "$1" -;;
	*.odt|*.ods|*.odp|*.sxw) odt2txt "$1";;
	*.png|*.jpg|*.jpeg|*.JPG) img2txt -f utf8 -d none -W 80 "$1";;
	*.mp4|*.webm|*.mkv) mediainfo "$1";;
	*.x|*.out|*.bin) xxd "$1";;
	*) highlight -O ansi "$1" || cat "$1";;
esac
