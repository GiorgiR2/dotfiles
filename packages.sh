
sudo apt install i3 i3status dmenu git ranger zsh neofetch neovim curl tmux kitty compton youtube-dl -y

# need to PlugInstall
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# nvim && :PlugInstall
# + install node; npm

# set zsh as default shell
chsh
# insert password
# input: /usr/bin/zsh
# reboot
