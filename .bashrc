#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# Fancy prompt
fg=('\[\e[0;30m\]' '\[\e[0;31m\]' '\[\e[0;32m\]' '\[\e[0;33m\]'
    '\[\e[0;34m\]' '\[\e[0;35m\]' '\[\e[0;36m\]' '\[\e[0;37m\]'
    '\[\e[1;30m\]' '\[\e[1;31m\]' '\[\e[1;32m\]' '\[\e[1;33m\]'
    '\[\e[1;34m\]' '\[\e[1;35m\]' '\[\e[1;36m\]' '\[\e[1;37m\]')
nofg='\[\e[0m\]'
export PS1="┌─[\[\e[01;37m\]\u\[\e[00m\]@\[\e[94m\]\h\[\e[00m\]:\[\e[1;34m\]\w\[\e[0m\]]\n└─╼ "
alias la='ls -a'
alias wifi-menu='sudo wifi-menu'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'