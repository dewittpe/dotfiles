#!/bin/bash

dt=$(date "+%Y%m%d_%H%M%S")

###############################################################################
# Needed directories
dir=$HOME/dotfiles
bkupdir=$HOME/dotfiles.bkup
mkdir -p $bkupdir
mkdir -p $HOME/.config/

backup_path() {
  local target=$1
  local label=$2

  if [ -e "$target" ] || [ -L "$target" ]; then
    mv "$target" "$bkupdir/${label}_$dt"
    echo "$target backed up to $bkupdir/${label}_$dt"
  fi
}

link_path() {
  local source=$1
  local target=$2
  local label=$3

  if [ -L "$target" ]; then
    echo "$target is an existing symbolic link"
  else
    backup_path "$target" "$label"
    ln -s "$source" "$target"
    echo "symbolic link $target has been created"
  fi
}

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
  link_path "$dir/git_config/$file" "$HOME/.$file" "$file"
done

###############################################################################
# Neovim
link_path "$dir/config/nvim" "$HOME/.config/nvim" "config_nvim"

###############################################################################
# R

for file in Rprofile
do
  link_path "$dir/$file" "$HOME/.$file" "$file"
done

###############################################################################
# shell rc
link_path "$dir/bashrc" "$HOME/.bashrc" "bashrc"

link_path "$dir/zshrc" "$HOME/.zshrc" "zshrc"

# eof
