
sudo apt update

# to change wallpaper
sudo apt install feh

sudo apt install newsboat
sudo apt install grep ripgrep fd -y
sudo apt install i3 i3status dmenu compton -y
sudo apt install git zsh neofetch neovim curl tmux kitty youtube-dl -y
sudo apt install ranger w3m urlscan -y

# install latex and it's dependencies
sudo apt install texlive texinfo texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra -y
# compile by: pdflatex name.tex or latex name.tex

sudo apt install apt-transport-https -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-beta-archive-keyring.gpg https://brave-browser-apt-beta.s3.brave.com/brave-browser-beta-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-beta-archive-keyring.gpg arch=amd64] https://brave-browser-apt-beta.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-beta.list
sudo apt install brave-browser-beta -y

# need to PlugInstall
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# nvim && :PlugInstall
# + install node; npm

# I do not use emacs
# cd ~/.emacs.d
# git clone --depth 1 https://github.com/doomemacs/doomemacs.git

# change default terminal
sudo update-alternatives --config x-terminal-emulator
# select kitty

# set zsh as default shell
chsh
# insert password
# input: /usr/bin/zsh
# reboot
