#!/bin/bash

# install plugin manager for vim (here: vim-plug)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy .vimrc file into home folder of current user
cp .vimrc ~/.

# print usage instructions
echo 
echo "// When using vim for the first time, type the following:"
echo "//"
echo "// :PlugInstall"
echo "//"
echo "// This will install all required plug-ins and resolve dependencies."