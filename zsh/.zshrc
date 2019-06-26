

#
# User configuration sourced by interactive shells
#
export PATH="$PATH:/opt/android-sdk/build-tools/27.0.3"
export EDITOR=vim

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

autoload -Uz promptinit
promptinit
prompt pure

alias icat="kitty +kitten icat" 
alias vim="nvim"
eval $(keychain --eval --quiet id_ed25519 id_rsa)
