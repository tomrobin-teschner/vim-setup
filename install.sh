#!/bin/bash

# install plugin manager for vim (here: vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy .vimrc file into home folder of current user
cp .vimrc ~/.

# special instruction for YouCompletMe package
CURRENT_DIR=$(pwd)
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
cd $CURRENT_DIR

# install plug ins
vim +PlugInstall +qall