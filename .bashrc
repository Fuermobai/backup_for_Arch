#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Shopt
shopt -s autocd

# Set
set -o vi

# Alias
alias grep='grep --color=always'
alias ydcv='ydcv -s --color always'
alias sudo='sudo '
alias ls='ls -ihF --color=auto '
alias ll='ls -ilh --color=auto -F'
alias la='ls -iahF'
alias diff='diff --color=always'
alias grep='grep --color=always'
alias ls='ls --color=always'
alias vi='vim'
alias cat='lolcat'
alias cp='cp -i'
alias clc='clear'
# Color for Less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '
#export LESS=-R
#export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
#export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
#export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
#export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
#export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
#export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
#export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
# Console output
PS1='[\u@\h \W]\$ '
