#!/usr/bin/bash
# . ~/.dotfiles/packages.sh

main(){
	dotFiles=('.aliases' '.fehbg' '.profile' '.selected_editor' '.tmux.conf' '.zshrc' '.newsboat' '.config/compton' '.config/i3' '.config/kitty' '.config/nvim' '.config/ranger')
	for item in "${dotFiles[@]}"; do
		# echo rm -rf ~/${item}
		# echo ln -sf ~/.dotfiles/${item} ~/${item}

		# delete already existing configs
        rm -rf ~/${item}

		#  make symlinks
		ln -sf ~/.dotfiles/${item} ~/${item}
    done
}

echo -n  "Setup dotfiles? [Y/n] "
read yn
case $yn in
	y | Y | Yes | yes) main;;
      n | N | No | no) echo "You say No";;
      *) echo "Invalid input..." break;;
esac

