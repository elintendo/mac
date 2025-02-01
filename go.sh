#!/bin/bash

# prep
USER_DIR=/Users/io
DOTS_DIR=$USER_DIR/mac

go () {
  rm -rf $USER_DIR/.config/$1
  ln -s $DOTS_DIR/configs/$1 $USER_DIR/.config
}

# install packages
# brew install neovim fzf antigen gh zoxide ghostty

# terminal
go "ghostty"
go "skhd"

# zsh
ln -sf $DOTS_DIR/configs/zshrc $USER_DIR/.zshrc
ln -s $DOTS_DIR/configs/zsh $USER_DIR/.zsh

# nvim
ln -sf $DOTS_DIR/configs/nvim/init.lua $USER_DIR/.config/nvim

# misc
ln -sf $DOTS_DIR/misc/gitconfig $USER_DIR/.gitconfig
