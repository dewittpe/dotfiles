#!/bin/bash

dt=$(date "+%Y%m%d_%H%M%S")

###############################################################################
# Needed directories
dir=$HOME/dotfiles
bkupdir=$HOME/dotfiles.bkup
mkdir -p $bkupdir
mkdir -p $HOME/.config/

###############################################################################
# git

if [ -f $HOME/.gitconfig ]; then
  echo "$HOME/.gitconfig exists and will not be modified"
else
  cp $dir/git_config/gitconfig $HOME/.gitconfig
  echo "$HOME/.gitconfig has been created.  You will need to add additional configurations such as user.email and user.name.  See README.md."
fi

for file in git-prompt.sh git-completion.bash git-completion.zsh git-completion.tcsh gitmessage subversion-prompt
do
  if [ -L $HOME/.$file ]; then
    echo "$HOME/.$file is an existing symbolic link"
  elif [ -d $HOME/.$file ]; then
    echo "$HOME/.$file is an existing file"
  else
    ln -s $dir/git_config/$file $HOME/.$file
    echo "symbolic link $HOME/.$file has been created"
  fi
done

###############################################################################
# Neovim
if [ -L $HOME/.config/nvim ]; then
  echo "$HOME/.config/nvim is an existing symbolic link"
elif [ -d $HOME/.config/nvim ]; then
  echo "$HOME/.config/nvim is an existing directory"
else
  ln -s $dir/config/nvim $HOME/.config/nvim
    echo "symbolic link $HOME/.config/nvim has been created"
fi

###############################################################################
# R

for file in Rprofile
do
  if [ -L $HOME/.$file ]; then
    echo "$HOME/.$file is an existing symbolic link"
  elif [ -d $HOME/.$file ]; then
    echo "$HOME/.$file is an existing file"
  else
    ln -s $dir/$file $HOME/.$file
    echo "symbolic link $HOME/.$file has been created"
  fi
done

###############################################################################
# shell rc
if [ -f $HOME/.bashrc ]; then
  mv $HOME/.bashrc $bkupdir/bashrc_$dt
fi
ln -s $dir/bashrc $HOME/.bashrc

# eof
