# PATH
PATH=$HOME/.local/bin:$PATH

# ohmyzsh config
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git virtualenvwrapper)
source $ZSH/oh-my-zsh.sh

# some env vars
export EDITOR=nvim

# aliases
alias dwmcfg="nvim ~/.dwmsrc/config.def.h"
alias mkdwm="sudo rm ~/.dwmsrc/config.h && sudo make -C ~/.dwmsrc clean install" 
# extreme laziness aliases
alias c="clear"
alias v="nvim"
alias zrc="nvim ~/.zshrc"
alias vrc="cd ~/.config/nvim && nvim init.vim"



# Start X when logging in from tty1
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx -- vt1 &> /dev/null
