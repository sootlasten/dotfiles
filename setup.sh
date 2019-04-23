#!/bin/bash

# store where the script was called
script_path="$( cd "$(dirname "$0")" ; pwd -P )"

# symlink all dotfiles to the home directory
for f in .vimrc .vim .tmux.conf
do 
    ln -s $script_path/$f $HOME/$f
done

# make new directory to .vim for swapfiles
mkdir -p $HOME/.vim/tmp
    
