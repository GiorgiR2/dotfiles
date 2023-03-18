# export LANG=$LANG.UTF-8

# include cpp custom made libraries
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/Lib

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

#exec "setxkbmap -option 'grp:alt_shift_toggle'"

export EDITOR=nvim
export VISUAL=nvim
export TERM=xterm-256color

tmux
PS

clear

pfetch

