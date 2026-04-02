#!/bin/bash

echo "[+] Starting VIM basic configuration for Python and C programming";
if [ "root" -ne whoami ]; then
  echo "[-] You need to run it as root";
  echo "[-] Exiting";
  exit;
fi
echo "[+] Clonning VIM-Plug";
git clone https://github.com/junegunn/vim-plug.git 1>/dev/null;
echo "[+] Changing VIM config files";
mkdir ~/.vim 2>/dev/null;
mkdir ~/.vim/autoload 2>/dev/null;
mv vim-plug/plug.vim ~/.vim/autoload/plug.vim;
mv vimrc > ~/.vimrc;
echo "[+] Installing Python and C LSP";
apt install build-essential cmake vim-nox python3-dev;
apt install mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm;
vim -c ":PlugInstall" none;
cd ~/.vim/plugged/YouCompleteMe;
python3 install.py --clangd-completer;
echo "[+] Completed";
