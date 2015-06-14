#!/bin/bash

dir=$HOME/dotfiles

# Set softlinks
ln -s $dir/terminator.conf $HOME/.config/terminator/config
ln -s $dir/vim             $HOME/.vim
ln -s $dir/vimrc           $HOME/.vimrc
ln -s $dir/bashrc          $HOME/.bashrc
ln -s $dir/bashrc_aliases  $HOME/.bashrc_aliases
ln -s $dir/git-prompt.sh   $HOME/.git-prompt.sh
ln -s $dir/tmux.conf       $HOME/.tmux.conf

# Pull in submodules
git submodule init && git submodule update
