#!/bin/bash

dir=$HOME/dotfiles
bkupdir=$HOME/dotfiles.bkup
mkdir -p $bkupdir

# if a .file exists, mv to the backup directory.
# create a softlink either way

# terminator
if [ -f $HOME/.config/terminator/config ]; then
  mv $HOME/.config/terminator/config $bkupdir/terminator.config
fi

mkdir -p $HOME/.config/terminator
ln -s $dir/terminator.conf $HOME/.config/terminator/config

# All other files can be looped over 
for file in bashrc bash_aliases dircolors git-prompt.sh Rprofile tmux.conf
do
    filename=$(basename $file)
            echo $file
    if [[ "$filename" != "$(basename $0)" ]]; then
        echo "Creating link for .$filename"
        # Move existing dotfile to $backup
        mv $HOME/.$filename $bkupdir/
        # Create symlink
        ln -s $dir/$filename $HOME/.$filename
    fi
done 

# Neovim
mkdir -p $HOME/.config/nvim
ln -s $dir/vim/bundle $HOME/.config/nvim/bundle
ln -s $dir/init.vim $HOME/.config/nvim/init.vim

# Pull in submodules
git submodule init && git submodule update
