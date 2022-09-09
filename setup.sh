#!/usr/bin/bash

# Future plans:
# -- automate with bash

while true; do

read -p "Do you want to install packages? (y/n) " yn

case $yn in 
	[yY] ) source ~/.dotfiles/packages.sh;
		break;;
	[nN] ) echo exiting...;
		exit;;
	* ) echo invalid response;;
esac

done

########################
#  delete these files  #
########################

dotFile = ()

# home directory
rm -rf ~/.aliases
rm -rf ~/.fehbg
rm -rf ~/.profile
rm -rf ~/.selected_editor
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc

rm -rf ~/.newsboat

# /etc
# rm -rf /etc/i3
# rm -rf /etc/newsboat
# rm -rf /etc/ranger
# rm -rf /etc/vim
# rm -rf /etc/i3status.conf

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

# ln -sf ~/.dotfiles/etc/i3 /etc/i3
# ln -sf ~/.dotfiles/etc/newsboat /etc/newsboat
# ln -sf ~/.dotfiles/etc/ranger /etc/ranger
# ln -sf ~/.dotfiles/etc/vim /etc/vim
# ln -sf ~/.dotfiles/etc/i3status.conf /etc/i3status.conf

ln -sf ~/.dotfiles/.config/compton ~/.config/compton
ln -sf ~/.dotfiles/.config/i3 ~/.config/i3
ln -sf ~/.dotfiles/.config/kitty ~/.config/kitty
ln -sf ~/.dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/.dotfiles/.config/ranger ~/.config/ranger

