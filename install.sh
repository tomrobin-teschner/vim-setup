#!/bin/bash

# install plugin manager for vim (here: vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy .vimrc file into home folder of current user
cp .vimrc ~/.

# copy snippets into snippets folder
mkdir -p ~/.vim/snippets && cp cpp.snippets ~/.vim/snippets/

# developer tools required for YouCopleteMe
sudo apt -y install cmake
sudo apt -y install python3-dev
sudo apt -y install mono-complete
sudo apt -y install golang
sudo apt -y install nodejs
sudo apt -y install default-jdk
sudo apt -y install npm

# special instruction for YouCompletMe package
CURRENT_DIR=$(pwd)
cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all
cd $CURRENT_DIR

# install plug ins
vim +PlugInstall +qall
