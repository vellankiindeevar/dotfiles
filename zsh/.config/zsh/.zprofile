# This file runs once at login.

# Set up a few standard directories based on:
#   https://wiki.archlinux.org/title/XDG_Base_Directory
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

# Add all local binaries to the system path.
export PATH="${PATH}:${HOME}/.local/bin"
export PATH="${PATH}:${HOME}/bin"

# Default programs to run.
export EDITOR="nvim"


