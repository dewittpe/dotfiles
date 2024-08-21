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
  echo "$HOME/.config/nvim is already a symbolic link"
elif [ -d $HOME/.config/nvim ]; then
  echo "$HOME/.config/nvim is a director and exists"
else
  ln -s $dir/config/nvim $HOME/.config/nvim
fi

###############################################################################
# bash
if [ -f $HOME/.bashrc ]; then
  mv $HOME/.bashrc $bkupdir/bashrc_$dt
fi
ln -s $dir/bashrc $HOME/.bashrc


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

