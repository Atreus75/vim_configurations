#!/bin/bash

echo "[+] Starting VIM basic configuration for Python and C programming";
echo "[+] Clonning VIM-Plug";
git clone https://github.com/junegunn/vim-plug.git 1>/dev/null;
echo "[+] Changing VIM config files";
if ! test -d ~/.vim; then
	mkdir ~/.vim;
	mkdir ~/.vim/autoload;
fi
if ! test -f ~/.vim/autoload/plug.vim; then
	mv vim-plug/plug.vim ~/.vim/autoload/plug.vim;
fi
mv vimrc ~/.vimrc;
echo "[+] Installing Python and C LSP";
sudo apt install build-essential cmake vim-nox python3-dev;
sudo apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm;
read -p "Type :PlugInstall inside vim, wait the end of the plugins installation, and exit with :q";
vim none;
python3 ~/.vim/plugged/YouCompleteMe/install.py --clangd-completer;
echo "[+] Completed";
