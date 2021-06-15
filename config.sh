#!/usr/bin/env bash

mkdir ~/work
mkdir ~/personal
mkdir ~/.config
mkdir ~/.local/bin

ln -fs ~/personal/dotfiles/nvim ~/.config/nvim
ln -fs ~/personal/dotfiles/git ~/.config/git
ln -fs ~/personal/dotfiles/zsh ~/.config/zsh
ln -fs ~/personal/dotfiles/shell ~/.config/shell
ln -fs ~/personal/dotfiles/zshenv ~/.zshenv
ln -fs ~/personal/dotfiles/tmux ~/.config/tmux
sudo ln -fs ~/personal/dotfiles/etc/wsl.conf /etc/wsl.conf
