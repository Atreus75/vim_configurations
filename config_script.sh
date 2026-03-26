#!/bin/bash

git clone https://github.com/Atreus75/vim_configurations.git;
git clone https://github.com/junegunn/vim-plug.git
mv vim-plug/plug.vim ~/.vim/autoload/plug.vim
cd ../;
vim -c ":PlugInstall" -c ":q!" none;
cd vim_configurations;
cat vimrc > ~/.vimrc;
