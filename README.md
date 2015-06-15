dotfiles
========

A collection of dotfiles for bash, git, tmux, terminator, and vim.  

Thank you
[Grazfather](https://github.com/Grazfather/dotfiles).  The structure of this
repository was based on your work.

Running `init.sh` will symlink `$HOME/.{file}` to `$HOME/dotfiles/{file}`, and
back up the original in `$HOME/dotfiles.bak/` as well as pull in all the vim
plugin submodules.  Call `bash init.sh`, not `sh init.sh`.

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

## terminator
My preferred terminal emulator.

## vim 
Plugins are managed by [pathogen](https://github.com/tpope/vim-pathogen).  Each
plugin that I use are defined in submodules within the `vim` directory.

## Other files
I prefer to have the keymapping between capslock and esc reversed.  This can be
acheived in the console by 
```bash
sudo loadkeys swap_esc_capslock.kmap
```
See [this superuser.com post](superuser.com/question/290115/how-to-change-console-keymap-in-linux) 
for details.  For the GUI I tend to stick with the manual settings through the
system settings gui.

