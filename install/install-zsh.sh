#!/bin/bash

sudo apt-get install zsh -y
chsh -s ($which zsh)

ln -sf $DOTFILES/zsh/zshrc $HOME/.zshrc
