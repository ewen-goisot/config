
export ZSH="/home/user/.oh-my-zsh"

#source ~/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="crunch"
export PAGER="less"
export MANPAGER="less"
#export PAGER="most"
#export MANPAGER="most"
XDG_CURRENT_DESKTOP=kde #for Dolphin TODO delete it
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
#DISABLE_LS_COLORS="true"
#export LSCOLORS=""
alias ls='ls --color=tty --time-style="+%Y-%m-%d"'
DISABLE_AUTO_TITLE="true"
ZSH_AUTOSUGGEST_STRATEGY="history"
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="20"
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=blue,bg=cyan,bold,underline"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=102"
#ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
# ZSH_CUSTOM=/path/to/new-custom-folder
HISTSIZE=10000

plugins=(
git z
#web-search
#ubuntu systemd sysadmin safe-paste
zsh-autosuggestions
zsh-syntax-highlighting
)
#fpath=(~/.zsh.d/ $fpath) # cheat
#export CHTSH_QUERY_OPTIONS="style=vim"
#if autoload -U +X add-zle-hook-widget 2>/dev/null; then
	#add-zle-hook-widget zle-line-pre-redraw _zsh_autosuggest_fetch
	#add-zle-hook-widget zle-line-pre-redraw _zsh_autosuggest_highlight_apply
#fi
# plugin sudo
# zsh-syntax-highlighting doit être en dernier
# bindkey '\ei' expand-or-complete
# bindkey tout court rappelle la liste des raccourcis clavier, -e emacs, -v nvim

source $ZSH/oh-my-zsh.sh



#echo -e "\e[?1000;1006;1015h";clear




alias a='zathura'
alias cfi='cpufreq-info -fm'
alias cl='clear'
alias cll='clear; clear' # efface aussi la dernière commande
alias chr='chmod +r'
alias chw='chmod +w'
alias chx='chmod +x'
alias cht='cht.sh'
alias chts='cht.sh --shell'
chti () {
	curl https://cht.sh/$1
}
alias cw='g++ main.cpp'
alias co='g++ -w main.cpp -O3 -s'
alias f='touch'
alias ff='mkdir'
alias h='htop'
alias hh='history'
#alias i='feh -T infos'
alias ii='inxi -F'
j () {
	zathura $1 2>/dev/null
}
alias k='kill'
alias kk='killall'
le () {
	[ -f ~/.ledit/h.$1 ] || touch ~/.ledit/h.$1
	ledit -h ~/.ledit/h.$1 -x -u $*
}
m () {
	tmux rename-window "M $1"
	LESSOPEN="|man %s" MAN_KEEP_FORMATTING=1 less -M -is "$@" 2>/dev/null;
	tmux set automatic-rename 1
}
alias ma='make'
alias mo='make && ./output'
alias mu='make clean'
alias mi='make install'
alias mpa='mpv --no-video'
alias p='pidof'
alias pp='ping -c 3 www.google.com'
alias pip3='python3 -m pip'
alias q='exit'
#conflict c-z lfcd
alias lfcd='lf && [[ -s /media/ramdisk/lfcd ]] && [[ $(cat /media/ramdisk/lfcd) != $(pwd) ]] && pushd $(cat /media/ramdisk/lfcd) ; tmux set automatic-rename 1'
alias t='top | colout " R " yellow | colout " 0[0.:]*" red | colout " root |/.*" green'
alias tt='date'
#alias tps='curl wttr.in'
mto () {
	curl wttr.in/$1
}
#alias v='nvim'
v () {
	#tmux_window_name=$(echo $1 | sed "s#^\(~/\|/home/user/\)\(.\|.config/\)\?##;s#^#V #")
	tmux rename-window "$(echo $* | sed "s# .*\$# …#g;s#^.*/##;s#^# #")"
	nvim $*
	echo "$var"
	tmux set automatic-rename 1
}
alias vv='nvim *.(c|cpp|h|hpp) || nvim *.(sh|bash|zsh) || nvim *.(py|js|html|css|tex|go|md) || nvim *.txt || nvim *.* || nvim *'
alias vn='nvim /dev/null' # écris du texte qui ne sera pas sauvegardé
#alias wego='~/go/bin/./wego'
alias xd='xdotool'
alias xk='xdotool key'
alias xm='xdotool mousemove'
alias xt='xdotool type'
alias xg='xdotool getmouselocation'
#alias y='synclient Touchpadoff=0'
#alias yy='synclient Touchpadoff=1'
alias yv='straw-viewer -C'    # aud+vid
alias ya='straw-viewer -C -n' # audio seul
alias yta='~/.i3scripts/yta.sh'
alias yd='youtube-dl'

# déplacements via un menu rofi
# la première commande ls est séparée en deux: s'il n'y en a qu'une
# la commande ne marcherait que dans les dossiers ayant des dossiers normaux ET masqués
# il est possible de répondre ../dossier meme si . est vide
# le second ls ne se fait que s'il y a eu un cd
alias ac="var=\$( (ls -d */ ; ls -d .*/) 2>/dev/null | cut -f1 -d'/' | rofi -dmenu -i -p \"Sous dossier\") && cd \"\$var\" && ls"

alias c='g++ -w main.cpp'
alias c1='g++ -w'

alias e='./a.out'
alias e1='./*.out'
alias e2='./*.sh'
alias e3='./*.py'
alias e4='./*.*'

alias l='ls'
alias la='ls -a'
alias ll='ls -lahG'
alias lsd='ls -d *(-/DN)'
alias llg='ls -lah | grep'
alias lll='ls -lahi' # affiche un maximum d'infos dont inode

alias sdi='sudo dpkg -i'
alias sgp='sudo gparted'
alias smi='sudo make install'
alias sm='sudo make'
alias soa='sudo apt autoremove'
alias sog='sudo apt upgrade'
alias soi='sudo apt install'
alias sop='sudo apt remove --purge'
alias sor='sudo apt remove'
alias sos='sudo su'
alias sou='sudo apt update'
alias soy='sudo apt install --only-upgrade'
alias sp='sudo add-apt-repository'
alias spr='sudo add-apt-repository --remove'
alias sr='sudo lf'
alias s='sudo'
alias svi='sudo nvim'


# èy musique
# TODO : changer de dossier, c'est maintenant dans ~/.i3scripts/yta.sh
alias èy='~/.i3scripts/yta.sh -o ~/Music/varloc'
alias èyt='cat ~/.i3scripts/url.txt'
alias èys='nvim ~/.i3scripts/url.txt'
alias èyn='echo "#init par zsh" > ~/.i3scripts/url.txt'
èyr () {
	echo "$1" >> ~/.i3scripts/url.txt
}

# è éditions courantes de fichiers
alias è='v ~/.zshrc'
alias èb='v ~/.i3blocks.conf'
alias èc='v ~/Documents/configux'
alias èe="libreoffice --calc 'Documents/emploi du temps.ods'"
alias èh='v ~/.zsh_history'
alias èi='v ~/.config/i3/config'
alias èk='v /usr/share/X11/xkb/symbols/oo'
alias èm='v ~/Documents/maudpassss.txt'
alias èr='v ~/.config/rofi/config'
alias èv='v ~/.config/nvim/init.vim'
#alias èvv='v ~/Documents/vim'
alias èt='v ~/.tmux.conf'

# èè déplacements courants
# compatibles avec "g" dans ma config lf
alias èèh="cd ~"
alias èèr="cd /"
alias èèp="cd ~/prog"
alias èèi="cd ~/.config"
alias èèk="cd /media/user/ramdisk"
alias èèt="cd /tmp"
alias èèx="cd /etc/X11"
alias èèm="cd /media"
alias èèu="cd /usr/bin"
alias èèe="cd /etc"
alias èèb="cd /bin"
alias èèy="cd ~/.local/share/Trash/lf"
alias èèo="cd ~/Documents"
alias èèt="cd ~/Desktop"

alias èèam="cd ~/Music"
alias èèav="cd ~/Videos"
alias èèad="cd ~/Documents"
alias èèae="cd ~/txt"
alias èèap="cd ~/Pictures"
alias èèag="cd ~/git"
alias èèac="cd ~/.config"
alias èèas="cd ~/.script"
alias èèaé="cd ~/.vim"

alias aé='alias | grep ^é'
alias aè='alias | grep ^è'

alias mem='~/.script/mem.sh'

bindkey -s 'ée' 'echo $'

bindkey -s 'éc' 'cd '
bindkey -s 'ém' '/'

# é extraits de la précédante commande
bindkey -s 'ét' '!:0 '
bindkey -s 'és' ' !:1 '
bindkey -s 'én' ' !:2 '
bindkey -s 'ér' ' !:3 '
bindkey -s 'éx' ' !:4 '
bindkey -s 'éd' '!:0-$ '
bindkey -s 'év' '!:0- '
bindkey -s 'éj' ' !:$ '
bindkey -s 'éw' '!:0-2 '

# éé commandes courantes
bindkey -s 'ééy' '| tail '
bindkey -s 'ééh' '| head '

bindkey -s 'ééb' '| bc '
bindkey -s 'ééc' '| cat -A '
bindkey -s 'éém' '| most '
bindkey -s 'éél' '| less '
bindkey -s 'ééf' 'sleep .1 ;'
bindkey -s 'ééz' 'sleep 4 ;'

bindkey -s 'éég' '| grep '
bindkey -s 'éét' '| tee '
bindkey -s 'éés' '| sort '
bindkey -s 'één' ' 2>/dev/null '
bindkey -s 'éér' '| rofi -dmenu -multi-select'

bindkey -s 'ééq' '| uniq '
bindkey -s 'ééd' '| sed "s///"^B^B^B'
bindkey -s 'ééj' ' 2>/dev/null 1>&2 '
bindkey -s 'ééw' '| wc '

# changed directly on ~/.fzf/shell/key-bindings.zsh
#bindkey '^S' 'fzf-file-widget'
#bindkey '^R' 'fzf-history-widget'
#bindkey -s '^R' 'history | ~/.fzf/bin/fzf-tmux'
#bindkey -s '^S' 'fd --exclude snap --color=never | ~/.fzf/bin/fzf-tmux'
#bindkey '^T' 'transpose-chars'
#↓dangerous: make whole line paste with shift-insert harder
#bindkey -s '^J' '^X'
bindkey -s '^L' ' lfcd^M'
bindkey -s '^T' "\eb"
bindkey -s '^S' "\ef"
bindkey "\ei" 'capitalize-word'
bindkey "\et" 'transpose-chars'
# on ~/.fzf/shell/key-bindings.zsh
# ^R fzf-history, \er fzf-file, \ec fzf-cd

#vi like in my vim config
# je ne l'utilise pas pour l'instant, c'est préventif!
# TODO improve visual mode
bindkey -a 'c' 'vi-repeat-find'
bindkey -a 'è' 'vi-beginning-of-line'
bindkey -a 'é' 'vi-end-of-line'
#bindkey -a 'E' 'vi-forward-blank-word-end'
#bindkey -a 'e' 'vi-forward-word-end'
#bindkey -a 'f' 'vi-find-next-char'
#bindkey -a 'F' 'vi-find-prev-char'
#bindkey -a 'gE' 'vi-backward-blank-word-end'
#bindkey -a 'ge' 'vi-backward-word-end'
bindkey -a 'J' 'vi-backward-blank-word'
bindkey -a 'j' 'vi-backward-word'
bindkey -a 'l' 'vi-rev-repeat-find'
bindkey -a 'n' 'vi-forward-char'
bindkey -a 'r' 'vi-find-next-char-skip'
bindkey -a 'R' 'vi-find-prev-char-skip'
bindkey -a 't' 'vi-backward-char'
bindkey -a ';' 'vi-goto-column'
bindkey -a '_' 'vi-goto-mark'
bindkey -a '?' 'vi-goto-mark-line'
bindkey -a 'W' 'vi-forward-blank-word'
#bindkey -a 'gg' 'beginning-of-buffer-or-history'
bindkey -a 's' 'down-line-or-history'
bindkey -a ')' 'vi-down-line-or-history'
#bindkey -a 'G' 'vi-fetch-history'
bindkey -a 'd' 'vi-history-search-backward'
bindkey -a 'D' 'vi-history-search-forward'
bindkey -a 'v' 'vi-repeat-search'
bindkey -a 'V' 'vi-rev-repeat-search'
bindkey -a 'm' 'up-line-or-history'
bindkey -a '(' 'vi-up-line-or-history'
#bindkey -a 'A' 'vi-add-eol'
#bindkey -a 'a' 'vi-add-next'
bindkey -a 'k' 'vi-backward-delete-char'
bindkey -a 'K' 'vi-backward-delete-char'
#bindkey -a 'u' 'vi-change'
#bindkey -a 'U' 'vi-change-eol'
bindkey -a '⸮' 'vi-change-whole-line'
bindkey -a "'" 'vi-delete'
bindkey -a 'k' 'vi-delete-char'
#bindkey -a 'gu' 'vi-down-case'
#bindkey -a '>' 'vi-indent'
#bindkey -a 'i' 'vi-insert'
#bindkey -a 'I' 'vi-insert-bol'
bindkey -a 'M' 'vi-join'
bindkey -a '°' 'vi-kill-eol'
bindkey -a 'z' 'vi-match-bracket'
#bindkey -a 'O' 'vi-open-line-above'
#bindkey -a 'o' 'vi-open-line-below'
bindkey -a 'g"' 'vi-oper-swap-case'
#bindkey -a '<' 'vi-unindent'
bindkey -a "g'" 'vi-up-case'
#bindkey -a 'y' 'vi-yank'
#bindkey -a 'Y' 'vi-yank-whole-line'
bindkey -a '@' 'vi-set-mark'
bindkey -a ',' 'undo'
bindkey -a '…' 'redo'
bindkey -a 'h' 'visual-mode'
bindkey -a 'H' 'visual-line-mode'
#bindkey -a 'ga' 'what-cursor-position'
#bindkey -a '0' 'vi-digit-or-beginning-of-line'
#bindkey -a 'a' 'select-a-blank-word'
#bindkey -a 'a' 'select-a-shell-word'
#bindkey -a 'a' 'select-a-word'
#bindkey -a 'a' 'select-in-blank-word'
#bindkey -a 'a' 'select-in-shell-word'
#bindkey -a 'a' 'select-in-word'

bindkey -M menuselect 't' vi-backward-char
bindkey -M menuselect 's' vi-down-line-or-history
bindkey -M menuselect 'm' vi-up-line-or-history
bindkey -M menuselect 'n' vi-forward-char


export LESS="--RAW-CONTROL-CHARS"

# TODO not separate less file
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP
export LESSKEY="/home/user/.lesskey"
export GROFF_NO_SGR=1
export EDITOR='nvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#hidden?
export FZF_DEFAULT_COMMAND="fd --exclude snap --color=always"
export FZF_DEFAULT_OPTS="--height 100% --preview='~/.config/lf/pv.sh {}' --preview-window=up:40%:hidden --jump-labels='etusinaghd,v.j-qkcmplbyrofw+x_z@:;?!()<>#' --color='pointer:15' --bind='ctrl-z:deselect-all,ctrl-v:preview-page-down,ctrl-q:preview-page-up,ctrl-r:toggle-preview,ctrl-x:toggle-preview-wrap,ctrl-o:toggle-sort,ctrl-g:top,ctrl-j:jump-accept,ctrl-t:backward-word,ctrl-s:forward-word,ctrl-k:kill-line,ctrl-_:page-up'"
export FZF_TMUX=1
#else, strange colors are set: why?
export LS_COLORS="cd=1;33:di=1;34:ex=1;32:ln=1;36:*.jpg=1;35:*.png=1;35"

#bd = (BLOCK, BLK)   Block device (buffered) special file
#cd = (CHAR, CHR)    Character device (unbuffered) special file
#di = (DIR)  Directory
#do = (DOOR) [Door][1]
#ex = (EXEC) Executable file (ie. has 'x' set in permissions)
#fi = (FILE) Normal file
#ln = (SYMLINK, LINK, LNK)   Symbolic link. If you set this to ‘target’ instead of a numerical value, the color is as for the file pointed to.
#mi = (MISSING)  Non-existent file pointed to by a symbolic link (visible when you type ls -l)
#no = (NORMAL, NORM) Normal (non-filename) text. Global default, although everything should be something
#or = (ORPHAN)   Symbolic link pointing to an orphaned non-existent file
#ow = (OTHER_WRITABLE)   Directory that is other-writable (o+w) and not sticky
#pi = (FIFO, PIPE)   Named pipe (fifo file)
#sg = (SETGID)   File that is setgid (g+s)
#so = (SOCK) Socket file
#st = (STICKY)   Directory with the sticky bit set (+t) and not other-writable
#su = (SETUID)   File that is setuid (u+s)
#tw = (STICKY_OTHER_WRITABLE)    Directory that is sticky and other-writable (+t,o+w)
#*.extension =   Every file using this extension e.g. *.rpm = files with the ending .rpm
#https://linuxhint.com/ls_colors_bash/
