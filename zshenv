#!/bin/zsh

[ -f "$HOME/.config/shell/profile" ] && source "$HOME/.config/shell/profile" 

if [ -e /home/indeevar/.nix-profile/etc/profile.d/nix.sh ]; then . /home/indeevar/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
