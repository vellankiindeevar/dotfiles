#!/usr/bin/env bash

sudo apt install zsh
sudo apt install python3-pip
sudo apt install fd-find
sudo apt install ripgrep
sudo apt install nodejs

pip install pynvim
pip install 'python-language-server[all]'
npm install -g vim-language-server

# python dependencies
# sudo apt-get install -y build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev openssl libffi-dev python3-dev python3-setuptools wget

# nvim dependencies
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
git clone https://github.com/neovim/neovim ~/build/neovim
cd ~/build/neovim/
make
sudo make install

# install latest tmux
sudo apt update
sudo apt install -y git
sudo apt install -y automake
sudo apt install -y bison
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev
rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
git checkout master
sh autogen.sh
./configure && make
sudo make install
cd -
rm -fr /tmp/tmux
