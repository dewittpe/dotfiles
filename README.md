dotfiles
========

A collection of dotfiles for bash, git, tmux, and vim.  Thank you
[Grazfather](https://github.com/Grazfather/dotfiles).  The structure of this
repository was based on your work.


Running `init.sh` will symlink `$HOME/.{file}` to `$HOME/dotfiles/{file}`, and
back up the original in `$HOME/dotfiles.bak/` as well as pull in all the vim
plugin submodules.

Make sure that `.bash_aliases` is called from your `.bashrc`:

```bash
echo "if [ -f $HOME/.bash_aliases ]; then . $HOME/.bash_aliases; fi" >> ~/.bashrc
```

Configure git to use the global `.gitignore_global`

```bash
git config --global core.excludesfile ~/.gitignore_global
```

## bash

* `.bashrc` started from `/etc/skel/.bashrc` and has been modified
* `.bashalias` 

## git

* [`git-prompt.sh`](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
  reports the current branch in the bash prompt.

## tmux

## vim 
Plugins are managed by [pathogen](https://github.com/tpope/vim-pathogen).  Each
plugin that I use are defined in submodules within the `vim` directory.

