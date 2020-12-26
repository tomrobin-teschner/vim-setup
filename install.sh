#!/bin/bash

# install plugin manager for vim (here: vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy .vimrc file into home folder of current user
cp .vimrc ~/.

# developer tools required for YouCopleteMe
sudo apt-get -y install cmake
sudo apt-get -y install python3-dev
sudo apt-get -y install mono-complete
sudo apt-get -y install golang
sudo apt-get -y install nodejs
sudo apt-get -y install default-jdk
sudo apt-get -y install npm

# special instruction for YouCompletMe package
CURRENT_DIR=$(pwd)
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
cd $CURRENT_DIR

# install plug ins
vim +PlugInstall +qall
