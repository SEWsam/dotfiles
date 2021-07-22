#!/bin/bash

SCRIPTDIR=$(dirname $0)

if [[ "$SCRIPTDIR" != "." ]]; then
    echo "ERROR: This script need to be run from within the dotfiles directory"
    exit
fi

# zsh setup
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  -- take this out for now
stow -t ~/ zsh

# nvim setup 
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
stow -t ~/ nvim

# kitty setup
stow -t ~/ kitty
