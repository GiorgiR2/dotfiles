#!/usr/bin/bash

# . ~/.dotfiles/packages.sh

# while false; do

# read -p "Do you want to install packages? (y/n) " yn

# case $yn in 
# 	[yY] ) source ~/.dotfiles/packages.sh;
# 		break;;
# 	[nN] ) echo exiting...;
# 		exit;;
# 	* ) echo invalid response;;
# esac

# done

dotFiles=('.aliases' '.fehbg' '.profile' '.selected_editor' '.tmux.conf' '.zshrc' '.newsboat' '/.config/compton' '/.config/i3' '/.config/kitty' '/.config/nvim' '/.config/ranger')

#####################################
#  delete already existing configs  #
#####################################

# home directory
rm -rf ~/.aliases
rm -rf ~/.fehbg
rm -rf ~/.profile
rm -rf ~/.selected_editor
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc

rm -rf ~/.newsboat

# ~/.config
rm -rf ~/.config/compton
rm -rf ~/.config/i3
rm -rf ~/.config/kitty
rm -rf ~/.config/nvim
rm -rf ~/.config/ranger

####################
#  make shortcuts  #
####################

ln -sf ~/.dotfiles/.aliases ~/.aliases
ln -sf ~/.dotfiles/.fehbg ~/.fehbg
ln -sf ~/.dotfiles/.profile ~/.profile
ln -sf ~/.dotfiles/.selected_editor ~/.selected_editor
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

ln -sf ~/.dotfiles/.newsboat ~/.newsboat

ln -sf ~/.dotfiles/.config/compton ~/.config/compton
ln -sf ~/.dotfiles/.config/i3 ~/.config/i3
ln -sf ~/.dotfiles/.config/kitty ~/.config/kitty
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/.dotfiles/.config/ranger ~/.config/ranger

clear;
