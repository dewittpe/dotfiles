# dotfiles

My dotfile, use them if you like them.

## Setting up a new Linux or Mac profile
Running `init.sh` will

1. back up any existing dot files to $HOME/dotfiles.bkup
2. set up dot files by
   a. create symbolic links to files in this repo, or
   b. coping a file to the correct location with the expection additional
   information will be added to the file, e.g., .gitconfig with user.email and
   user.name.

## Configure Neovim
Late August 2024 I moved way from pathogen as my plugin manager to Lazy.nvim.
This changed the structure of the dot files and the `$HOME/.config/nvim`
directory.

## git
* [`git-prompt.sh`](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh)
  reports the current branch in the bash prompt.

* On a new machine, use the gitconfig file herein to get the basics of
  `$HOME/.gitconfig` set up.  Makesure to add the following section via `git
  config --global user.email` and `git config --global user.name` or explicitly
  in the `$HOME/.gitconfig` file.

```
[user]
  email = <email>
  name =  <name>
  signingkey = <KEYID>
```

* To get the signing key and let git know about it:
[](https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key)

```
gpg --list-secret-keys --keyid-format=long
git config --global user.signingkey <KEYID>
```

## bash

* `.bashrc` started from `/etc/skel/.bashrc` and has been modified
* `.bashalias`

## tmux


## NOTES:

### Copy GPG Keys
While on the machine with the key:

```bash
gpg --export-secret-key SOMEKEYID | ssh <machine-that-needs-key> gpg --import
```

You may need
```
export GPG_TTY=$(tty)
```
in your bashrc or similar file
