local wezterm = require 'wezterm';
return {
window_close_confirmation = "NeverPrompt",
color_scheme_dirs = {"//wsl$/Ubuntu-20.04/home/indeevar/.vim/plugged/tokyonight.nvim/extras"},

bold_brightens_ansi_colors = true,
window_background_opacity = 0.93,
cursor_blink_rate = 0,
freetype_load_target = "Normal",
  font = wezterm.font("CaskaydiaCove NF"),
  font_size = 10.0,
  color_scheme = "Gruvbox Dark",
  enable_tab_bar = false,
  window_padding = {
    left = 0,
    right = 0,

    top = 0,
    bottom = 0,
  },
  default_prog = {"wsl"},
  default_cwd = "//wsl$/Ubuntu-20.04/home/indeevar",
    keys = {
    {key="n", mods="SHIFT|CTRL", action="ToggleFullScreen"},
    {key="l", mods="ALT", action="ShowLauncher"},
  },
  launch_menu = {
    {
      label = "pwsh",
      args = {"pwsh"},
    },
  },
}
