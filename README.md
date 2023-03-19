# Dotfiles

My Personal dotfiles, configurations...

Software I currently use:
 - Web browser - brave
 - Shell - zsh
 - Terminal - kitty
 - Terminal multiplexer - tmux
 - Text editor - neovim
 - File manager - ranger
 - Window manager - i3
 - Image Viewer - sxiv
 - Feed reader - Newsboat (reading news, blogs, watching yt/peertube)

## Getting started

Running following commands will make symlinks for config files, install packages, change wallpaper, etc.

```sh
git clone https://github.com/GiorgiR2/dotfiles.git ~/.dotfiles
cd .dotfiles

# install all packages/apps (for debian based systems)
bash ./install.sh

# install all packages/apps (for void linux)
bash ./installVoid.sh

# add dotfiles (symlinks)
bash ./setup.sh
```
