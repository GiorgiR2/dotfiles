#!/usr/bin/bash
# . ~/.dotfiles/packages.sh

main(){
	dotFiles=('.aliases' '.fehbg' '.profile' '.selected_editor' '.tmux.conf' '.zshrc' '.newsboat' '.emacs' '.emacs.d/myinit.org' '.emacs.d/init.el' '.config/mpv' '.config/yt-dlp' '.config/compton' '.config/i3' '.config/kitty' '.config/nvim' '.config/ranger')
	for item in "${dotFiles[@]}"; do
		# echo rm -rf ~/${item}
		# echo ln -sf ~/.dotfiles/${item} ~/${item}

		# delete already existing configs
        rm -rf ~/${item}

		#  make symlinks
		ln -sf ~/.dotfiles/${item} ~/${item}
    done

    source ~/.zshrc
	echo Done!
}

echo -n  "Setup dotfiles? [Y/n] "
read yn
case $yn in
	y | Y | Yes | YES | yes) main;;
      n | N | No | NO | no) echo "You say No";;
      *) echo "Invalid input..." break;;
esac

