#!/bin/zsh

var=$(file -b $1 2>/dev/null)
echo "\e[1;033m$var\e[0m\n"

[[ $var == "directory" ]] && ls -lahG --color=always --time-style=+%y-%m-%d $1 || (

[[ $(du $1 | awk '{print $1}') -lt 150 ]] && case "$1" in
	*.tar*) tar tf "$1";;
	*.zip) unzip -l "$1";;
	*.rar) unrar l "$1";;
	*.7z) 7z l "$1";;
	*.pdf) echo -n "\e[1;036m"; pdfinfo "$1" | grep "Pages\|Author\|Producer\|CreationDate"; echo -n "\e[0m"; pdftotext -f 1 -l 4 "$1" -;;
	*.odt|*.ods|*.odp|*.sxw) odt2txt "$1";;
	*.png|*.jpg|*.jpeg|*.JPG|*.jfif|*.gif) chafa -c 240 --size=80 "$1" ;;
	*.mp3|*.opus|*.m4a|*.aac|*.wav|*.mp4|*.avi|*.webm|*.mkv|*.wma|*.mov) mediainfo "$1" | sed "s/ \{18\}:/:/";;
	*.iso|*.MTS|*.mts)echo "other";;
	*.x|*.out|*.bin|*.o) xxd "$1";;
	#*.txt|*.c|*.cpp|*.h|*.hpp|*.sh)echo "\e[1;033m$(wc $1 | awk '{print $1 "l " $2 "w " $3 "c"}')\e[0m";
	# avoid cound on big files
	*.*) echo "\e[1;033m$(wc $1 | awk '{print $1 "l " $2 "w " $3 "c"}')\e[0m";
		highlight -l -j 2 -O xterm256 --config-file=/home/user/.config/lf/vim.theme "$1" 2>/dev/null || head -n 50 "$1";;
	*) [[ $(file -b $1) == "directory" ]] && ls -lahG --color=auto $1 || cat $1;;
esac

)
