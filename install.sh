#!/usr/bin/bash
# Install script for debian based distributions

basicSetup(){
	# to change wallpaper
	sudo apt install feh -y

	sudo apt install newsboat -y
	sudo apt install grep ripgrep fd -y
	sudo apt install git zsh neofetch curl kitty youtube-dl -y
	sudo apt install ranger w3m urlscan -y
}

function changeDefaults(){
	# change default terminal
	# select kitty
	sudo update-alternatives --config x-terminal-emulator

	# set zsh as default shell
	# insert password
	# input: /usr/bin/zsh
	# reboot
	chsh
}

latexDep(){
	# install latex and it's dependencies
	sudo apt install texlive texinfo texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra -y
	# compile by: pdflatex name.tex or latex name.tex
}

neoVimSetup(){
	sudo apt install neovim tmux -y

	# need to PlugInstall
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	# nvim && :PlugInstall
	# + install node; npm
}

tilingWindowManager(){
	sudo apt install i3 i3status dmenu compton -y
}

desktopApps(){
	echo "Installing desktop apps..."

	sudo apt install apt-transport-https -y
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
	sudo apt install brave-browser-beta -y
}

emacsSetup(){
	# I do not use emacs
	# cd ~/.emacs.d
	# git clone --depth 1 https://github.com/doomemacs/doomemacs.git
	echo no emacs
}

installNodeNpm(){
	# install node and npm
	echo no node
}

main(){
	sudo apt update

	basicSetup
	changeDefaults
	neoVimSetup
	tilingWindowManager
	desktopApps
	
	latexDep
}

echo "We are about to setup your laptop\n"
echo -n "Are you sure? [Y/n] "
read yn
case $yn in 
	y | Y | yes | Yes ) main; exit 0;;
	n | N | no | No ) echo "exiting..."; exit 0;;
	* ) echo "invalid response" break; exit 0;;
esac

