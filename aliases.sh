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
echo "" >> $bashrc_path

# alias for killing all python processes
echo "# aliases for killing processes" >> $bashrc_path
echo "alias \"killpy=ps -ef | grep python | awk '{print \\\$2}' | xargs -I{} kill -9 {}\"" >> $bashrc_path
echo "" >> $bashrc_path

