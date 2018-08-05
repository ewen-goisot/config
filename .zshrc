# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/ewen-goisot/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="crunch"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# commande de secours pour retourner en azerty
alias aaaaa='setxkbmap fr'
alias bbbbb='setxkbmap fr'
alias ggggg='setxkbmap fr'
alias qqqqq='setxkbmap fr'

alias l='ls'
alias la='ls -a'
alias ll='ls -lahG'
alias llg='ls -lah | grep'
alias lll='ls -lah'

# commandes fréquentes
alias c='g++ -w main.cpp'
alias cfi='cpufreq-info -fm'
alias cl='clear'
alias cll='clear; clear' # efface aussi la dernière commande
alias chr='chmod +r'
alias chw='chmod +w'
alias chx='chmod +x'
alias cw='g++ main.cpp'
alias co='g++ -w main.cpp -O3 -s'
alias e='./a.out'
alias f='touch'
alias fd='mkdir'
#alias g='grep' sert déj
pour git
alias h='htop'
alias hh='history'
alias hg='history | grep'
alias hl='history | less'
alias i='inxi -F'
alias k='kill'
alias kk='killall'
alias m='man'
alias mk='make'
alias mc='make clear'
alias mi='make install'
alias p='pidof'
alias pp='ping -c 3 www.google.com'
alias q='exit'
alias r='ranger'
alias t='top'
alias tt='date'
alias v='vim'
alias vv='vim *.(c|cpp|h|hpp)'
alias xk='xdotool key'
alias y='synclient Touchpadoff=0'
alias z='synclient Touchpadoff=1'

# principaux déplacements
# pile
alias a='pushd .'
alias aa='pushd'
alias af='cd ..'
alias aff='cd ../..'
alias afff='cd ../../..'
alias affff='cd ../../../..'
alias au='popd'
# déplacements via un menu rofi
alias ad="var=\$(ls -d */ | cut -f1 -d'/'); var=\$(echo \"..
\$var\" | rofi -dmenu -i -p \"Sous dossier\"); cd \"\$var\""
alias mad="var=\$(ls -d */ .*/ | cut -f1 -d'/' | rofi -dmenu -i -p \"Sous dossier\"); cd \"\$var\""

alias s='sudo'
alias sdi='sudo dpkg -i'
alias sgp='sudo gparted'
alias smi='sudo make install'
alias sou='sudo apt update'
alias soa='sudo apt autoremove'
alias sog='sudo apt upgrade'
alias soi='sudo apt install'
alias sop='sudo apt remove --purge'
alias sor='sudo apt remove'
alias sos='sudo su'
alias sra='sudo ranger'
alias svi='sudo vim'

# provient d'un pluggin oh-my-zsh
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most" # ne marche pas
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g P="2>&1| pygmentize -l pytb" # ne marche pas

# é déplacements courants
alias é='cd ~/aprog/025_sinapt_bis'
alias éa='cd ~/aprog'
alias éd='cd ~/Documents'
alias ék='cd /usr/share/X11/xkb/symbols'
alias él='cd ~/atxt/acours/maths/CTU\ L3\ semestre\ 2'
alias ém='cd ~/Music'
alias ér='cd /'
alias ét='cd ~/Downloads'
alias éme='cd /media/ewen-goisot'
alias émé='cd /media'
alias éx='cd ~/atxt'

# è scripts courants
alias è='g++ -w main.cpp && ./a.out'
alias èv='é; vim *.(c|cpp|h|hpp)'

# à éditions courantes de fichiers
alias à='vim ~/.zshrc'
alias àb='vim ~/.i3blocks.conf'
alias àc='vim ~/Documents/configux'
alias àe="libreoffice --calc 'Documents/emploi du temps.ods'"
alias àh='vim ~/.zsh_history'
alias ài='vim ~/.config/i3/config'
alias àk='sudo vim /usr/share/X11/xkb/symbols/oo'
alias àl='evince ~/atxt/acours/maths/CTU\ L3\ semestre\ 2/EFcours.pdf'
###########
alias àr='vim ~/.config/rofi/config'
alias àv='vim ~/.vimrc'
alias àvv='vim ~/Documents/vim'

alias ç='setxkbmap fr'
alias çg='setxkbmap oo -variant oss'
alias çq='setxkbmap us'

# Bang! Previous Command Hotkeys
# la touche □ se situe en haut à gauche de ma disposition de clavier, remplacer par ² sur un clavier normal
bindkey -s '□1' " !:0 "
bindkey -s '□2' " !:1 "
bindkey -s '□3' " !:2 "
bindkey -s '□4' " !:3 "
bindkey -s '□5' " !:4 "
bindkey -s '□6' " !:5 "  
bindkey -s '□7' " !:0 \n"  
bindkey -s '□8' " !:1 \n"  
bindkey -s '□9' " !:0-$ \n"  
bindkey -s '□0' " !:0- "  
