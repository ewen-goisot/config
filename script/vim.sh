#!/usr/bin/zsh

bash_in_st(){
	#local IFS
	/home/user/git/st/st -t "text for browser" -e \
		bash --rcfile <(printf '. ~/.bashrc; set -m; %s\n' "$*")
}

daystamp=$(date '+%y-%m-%d')
hourstamp=$(date '+%H-%M-%S')
[ -d /ram/vim ] || mkdir /ram/vim
[ -d /ram/vim/$daystamp ] || mkdir /ram/vim/$daystamp
filename="/ram/vim/$daystamp/$hourstamp.txt"
[ -f $filename ] && exit 1 || touch $filename
pgrep copyq && clipboard_active="copyq" || clipboard_active="false"

(
bash_in_st "exec nvim $filename -c 'call OnBrowserEnter()|startinsert'"
[ $(wc -c $filename | awk '{print $1}') -ge 6 ] && (
	[[ "$clipboard_active" == "copyq" ]] && sleep .1 && copyq disable
	sleep .2 && cat $filename | xsel -ib
	sleep .1 && xdotool key Shift+Insert
	sleep .2 && xdotool key Return
	[[ "$clipboard_active" == "copyq" ]] && sleep .1 && copyq enable
)
[ $(wc -l $filename | awk '{print $1}') -ge 3 ] || rm $filename
) &

sleep .5 && i3-msg focus right
sleep .1 && i3-msg floating toggle
