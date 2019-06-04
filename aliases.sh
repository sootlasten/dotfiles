#!/bin/bash 

bashrc_path=$HOME/.bashrc 

# add a newline if one doesn't exist
if [ "$(tail -n 1 $bashrc_path)" != "" ]; then
    echo "" >> $bashrc_path
fi

# aliases for copying and pasting 
echo "# aliases for copying and pasting" >> $bashrc_path
echo "alias \"c=xclip -selection clipboard\"" >> $bashrc_path
echo "alias \"p=xclip -o -selection clipboard\"" >> $bashrc_path

