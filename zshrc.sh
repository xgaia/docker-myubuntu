#! /usr/bin/env zsh

#history
export HISTORY=1000000
export SAVEHIST=1000000
export HISTFILE=$HOME/.history
setopt append_history
setopt inc_append_history
setopt share_history
 
# Complétion 
autoload -U compinit
compinit
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
zmodload zsh/complist
setopt extendedglob
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"
 
# Correction des commandes
setopt correctall
 
#prompt
autoload -U colors
colors
rc="%{$reset_color%}"
red="%{[38;5;1m%}"
green="%{[38;5;2m%}"
yellow="%{[38;5;3m%}"
blue="%{[38;5;4m%}"
purple="%{[38;5;5m%}"
cyan="%{[38;5;6m%}"
grey="%{[38;5;8m%}"
pink="%{[38;5;128m%}"
orange="%{[38;5;166m%}"
sky="%{[38;5;45m%}"
white="%{[38;5;15m%}"
PROMPT="${pink}%n@%m${rc}:${purple}%~${rc}%(!.${red}#${rc}.${rc}$) "

RPROMPT="${yellow}[%t]${rc} [%l]"

# aliases

#system

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color'
alias l='ls -1'
alias la='ls -A'
alias ll='ls -lh'
alias lla='ls -A -lh'
alias py='ipython3'

#apt

alias install='apt -y install'
alias update='apt -y update'
alias upgrade='apt -y upgrade'
alias ppa='add-apt-repository'
alias remove='apt remove -y --purge'
alias search='apt search'
alias show='apt show'
alias autoremove='apt autoremove -y --purge'
alias maj='update && upgrade && autoremove && update'

#venv

alias activate='source venv/bin/activate'
alias cactivate='python3 -m venv venv && source venv/bin/activate && pip3 install --upgrade pip'


#mkcd

function mkcd(){
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# export
export EDITOR=/usr/bin/vim
