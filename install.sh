#!/usr/bin/bash
# Install script for debian based distributions

systemInfo(){
	apt install neofetch

	wget https://github.com/dylanaraps/pfetch/archive/master.zip
	unzip master.zip
	install pfetch-master/pfetch /usr/local/bin/
	ls -l /usr/local/bin/pfetch

	rm master.zip

    # Get cpu data
    # Start the top like utility with gpu (alias gpu='sudo intel_gpu_top')
    apt install intel-gpu-tools
}

basicSetup(){
	# to change wallpaper
	apt install feh

	apt install htop newsboat
	apt install grep ripgrep fd
	apt install git zsh curl kitty
	apt install ranger w3m urlscan

	apt install youtube-dl yt-dlp
	pip3 install brotli
}

function changeDefaults(){
	# change default terminal
	# select kitty
	update-alternatives --config x-terminal-emulator

	# set zsh as default shell
	# insert password
	# input: /usr/bin/zsh
	# reboot
	chsh
}

latexDep(){
	# install latex and it's dependencies
	apt install texlive texinfo texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
	# compile by: pdflatex name.tex or latex name.tex
}

installTextEditors(){
	apt install neovim tmux

	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	# :PlugInstall

	apt install vscode
}

tilingWindowManager(){
	apt install i3 i3status dmenu compton
}

desktopApps(){
	echo "Installing desktop apps (brave browser)..."

	apt install apt-transport-https
	curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
	sudo apt install brave-browser-beta
}

emacsSetup(){
	# cd ~/.emacs.d
	# git clone --depth 1 https://github.com/doomemacs/doomemacs.git
	apt install emacs
}

installNodeNpm(){
	# install node and npm
	echo no node
}

setupDotFiles(){
	bash ./setup.sh
}

main(){
	# echo "Choose distribution (debian): "
	# read distro
	# case $distro in
	# 	debian ) echo --debian--;;
	# 	void ) echo --void--;;
	# 	* ) echo not supported;;
	# esac

	sudo apt update

	systemInfo
	basicSetup
	changeDefaults
	installTextEditors
	tilingWindowManager

	echo -n "Do you want to install Desktop apps (brave browser)? "
	read yn0
	case $yn0 in
		y | Y | yes | Yes ) desktopApps;;
		* ) echo "moving on...";;
	esac

	# ////

	echo -n "Do you want to install latex? "
	read yn1
	case $yn1 in
		y | Y | yes | Yes ) latexDep;;
		* ) echo "moving on...";;
	esac

	setupDotFiles
	# + install node; npm

	echo Done!
}

echo "We are about to setup your laptop"
echo -n "Are you sure? [Y/n] "
read yn
case $yn in 
	y | Y | yes | Yes ) main; exit 0;;
	n | N | no | No ) echo "exiting..."; exit 0;;
	* ) echo "invalid response" break; exit 0;;
esac

