#
# THIS COMES FROM /home/ewen-goisot, MEANING I MODIFIED IT A BIT!
# DON'T USE IT IF YOU WANT THE STANDART CR THEME
#
# CR - created from Steve Eley's cat waxing.
# Initially hacked from the Dallas theme. Thanks, Dallas Reedy.
#
# This theme assumes you do most of your oh-my-zsh'ed "colorful" work at a single machine,
# and eschews the standard space-consuming user and hostname info.  Instead, only the
# things that vary in my own workflow are shown:
#
# * The time (not the date) *** and seconds
# * The RVM version and gemset (omitting the 'ruby' name if it's MRI)
# * The current directory
# * The Git branch and its 'dirty' state
# *** error checking
#
# Colors are at the top so you can mess with those separately if you like.
# For the most part I stuck with Dallas's.

CR_TIME_COLOR="%{$FG[085]$BG[234]%}"
CR_RVM_COLOR="%{$FG[005]$BG[085]%}"
CR_DIR_COLOR="%{$FG[015]%(!.$BG[009].$BG[012])%}"
CR_GIT_BRANCH_COLOR="%{$FG[085]%}"
CR_SEP_UNU="%{%(!.$FG[009].$FG[012])$BG[234]%} "
CR_SEP_DEK="%{$FG[234]%(!.$BG[009].$BG[012])%} "
CR_SEP_KVA="%{$FG[234]%}"
CR_WRONG="%{$FG[009]%}"
CR_RIGHT="%{$FG[010]%}"


# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$CR_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $CR_RIGHT✅$CR_TIME_COLOR"
ZSH_THEME_GIT_PROMPT_DIRTY=" $CR_WRONG❎$CR_TIME_COLOR"

# Our elements:
CR_TIME_="$CR_DIR_COLOR%!$CR_SEP_UNU$CR_TIME_COLOR%D{%m-%d %H:%M}%{$reset_color%}"
if [ -e ~/.rvm/bin/rvm-prompt ]; then
  CR_RVM_="$CR_TIME_COLOR"["$CR_RVM_COLOR\${\$(~/.rvm/bin/rvm-prompt i v g)#ruby-}$CR_TIME_COLOR"]"%{$reset_color%}"
else
  if which rbenv &> /dev/null; then
    CR_RVM_="$CR_TIME_COLOR"["$CR_RVM_COLOR\${\$(rbenv version | sed -e 's/ (set.*$//' -e 's/^ruby-//')}$CR_TIME_COLOR"]"%{$reset_color%}"
  fi
fi
CR_DIR_="$CR_SEP_DEK$CR_DIR_COLOR%~$CR_SEP_UNU\$(git_prompt_info)"
CR_PROMPT="$CR_TIME_COLOR%(!.#.$)%{$reset_color%}$CR_SEP_KVA"

# Put it all together!
local return_code="%(?..%{$FG[015]$BG[009]%}[%?]%{$BG[234]%} )"
local count_jobs="%1(j.%{$FG[017]$BG[190]%}[%j]%{$BG[234]%} .)"
PROMPT="$CR_TIME_$CR_RVM_$CR_DIR_%B${return_code}${count_jobs}%b$CR_PROMPT %{$reset_color%}"

# vim: ft=zsh
