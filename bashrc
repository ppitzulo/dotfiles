#
# ~/.bashrc
#

PATH='/usr/local/sbin:/usr/local/bin:/usr/bin'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export MOZ_ENABLE_WAYLAND=1 
