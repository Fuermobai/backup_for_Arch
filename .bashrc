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
alias drc='python2 /home/libre/drcom-generic/wifi-shiyanshi.py'
alias drh='python2 /home/libre/drcom-generic/home.py'
# alias fq='sslocal -c /etc/shadowsocks/aiguo.json'
alias fq='ss-local -s 45.76.234.144 -p 21227 -l 1080 -k asdfw@12313 -m aes-256-cfb'
alias grep='grep --color=always'
alias ydcv='ydcv -s --color always'
alias sudo='sudo '
alias ls='ls -ihF --color=always '
alias lt='ls -t'
alias ll='ls -ilth --color=always -F'
alias la='ls -iahF'
alias diff='diff --color=always'
#alias grep='grep --color=always'
#alias ls='ls --color=always'
alias vi='vim'
alias cat='lolcat'
alias cp='cp -i'
alias cl='clear'
alias e='exit'
alias trans='trans =zh'
alias clang++='clang++ -std=c++11'
alias qm4='qmake-qt4'
alias qm4s='qmake-qt4 -spec /usr/share/qt4/mkspecs/unsupported/linux-clang'
alias mat2017='/opt/matlab_2017b/bin/matlab'
alias primusrun='vblank_mode=0 primusrun'
alias pacup='sudo pacman -Syu'
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
#PS1='[\u@\h \w]\$ '
PS1='[\[\e[35;40m\]\u@\H \w \d \t]\$ '



#eval "`pip completion --bash`"
#这里将补全注释掉的理由是：太特喵的卡了！！！！！！

#Python2 completion
export PYTHONSTARTUP="/home/libre/.pyrc"
export PYTHONDOCS=/usr/share/doc/python2/html/
