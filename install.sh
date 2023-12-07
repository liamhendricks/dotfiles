#!/bin/bash

export DOTFILES="$HOME/Workspace/dotfiles"

###########
# INSTALL #
###########
. "$DOTFILES/install/install-zsh.sh"
. "$DOTFILES/install/install-nvim.sh"
. "$DOTFILES/install/install-tmux.sh"
