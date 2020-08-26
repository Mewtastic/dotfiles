#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export TERM=alacritty
export PATH="$HOME/.local/bin${PATH:+:${PATH}}"
export EDITOR="nvim"
export HISTCONTROL=ignoreboth

### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# aliases
alias p="sudo pacman"
alias y="yay"
alias v="nvim"
alias vim="nvim"
alias mkd="mkdir -pv"
alias ..="cd .."
alias yt="youtube-dl --add-metadata -ic"
alias yta="youtube-dl --add-metadata -xic"
alias rm="rm -vi"
alias mv="mv -vi"
alias cp="cp -vi"
alias ls="ls -h --color=auto"
alias df="df -h"
alias grep="grep --color=auto"

# Dotfile management
alias config='/usr/bin/git --git-dir=/home/mewtastic/.cfg/ --work-tree=/home/mewtastic'

# pidswallow configuration: Must be at bottom of script
[ -n "$DISPLAY" ]  && command -v xdo >/dev/null 2>&1 && xdo id > /tmp/term-wid-"$$"
trap "( rm -f /tmp/term-wid-"$$" )" EXIT HUP
