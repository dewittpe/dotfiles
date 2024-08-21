#!/bin/bash

dir=$HOME/dotfiles
bkupdir=$HOME/dotfiles.bkup
mkdir -p $bkupdir

# Neovim
mkdir -p $HOME/.config/
ln -s $dir/config/nvim $HOME/.config/nvim

# if a .file exists, mv to the backup directory.
# create a softlink either way

# All other files can be looped over 
#for file in bashrc dircolors git-prompt.sh Rprofile tmux.conf gitmessage
#do
    #filename=$(basename $file)
            #echo $file
    #if [[ "$filename" != "$(basename $0)" ]]; then
        #echo "Creating link for .$filename"
        ## Move existing dotfile to $backup
        #mv $HOME/.$filename $bkupdir/
        ## Create symlink
        #ln -s $dir/$filename $HOME/.$filename
    #fi
#done 

