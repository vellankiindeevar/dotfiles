#!/usr/bin/env bash

sudo apt install zsh
sudo apt install nodejs

pip install 'python-language-server[all]'
npm install -g vim-language-server

# python dependencies
# sudo apt-get install -y build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev zlib1g-dev openssl libffi-dev python3-dev python3-setuptools wget

#!/usr/bin/env bash

# starship
# nvim
# zsh
# tmux
# fzf
# direnv

set -e

install_all_packages(){
    sudo apt-get install -y\
        python-pip ripgrep fd-find zsh\

    sudo add-apt-repository ppa:ubuntu-toolchain-r/test
    sudo apt-get update
    sudo apt install gcc-10 gcc-10-base gcc-10-doc g++-10
    sudo apt install libstdc++-10-dev libstdc++-10-doc

    pip install neovim
    pip install pynvim

}

install_nvim() {
    sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip
    git clone https://github.com/neovim/neovim ~/build/neovim
    cd ~/build/neovim/
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
}

install_tmux(){
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
}
clone_dotfiles
install_fzf
install_asdf
install_vim_plug
stow_or_symlink_all_files
change_default_shell_to_zsh
install_Vim_plugins
main(){
}
main


