#!/bin/bash

# store where the script was called
script_path="$( cd "$(dirname "$0")" ; pwd -P )"

# symlink all dotfiles to the home directory
for f in .vimrc .vim .tmux.conf
do 
    fp=$HOME/$f

    if test -h $fp; then
        echo "$fp exists, unlinking"
        unlink $fp
    fi

    ln -s $script_path/$f $fp
done

# make new directory to .vim for swapfiles
mkdir -p $HOME/.vim/tmp

# aliases for bash
source aliases.sh

# source bashrc
source $HOME/.bashrc

