# dotfiles

My dotfiles, use them if you like them.

## Setting up a new Linux or Mac profile
Running `init.sh` will

1. back up conflicting existing files to `$HOME/dotfiles.bkup`
2. create symbolic links for the managed shell, R, git helper, and Neovim files
3. copy the base git config to `$HOME/.gitconfig` if one does not already exist

Notes:

* Existing symbolic links are left in place.
* Existing plain files or directories that would conflict with a managed link
  are moved to the backup directory before the new link is created.
* `init.sh` does not merge existing config files.

## Configure Neovim
Late August 2024 I moved away from pathogen as my plugin manager to Lazy.nvim.
This changed the structure of the dot files and the `$HOME/.config/nvim`
directory.

### System dependencies for Neovim, R.nvim, and tree-sitter
For the current Neovim setup, the following system tools are needed in addition
to Neovim itself:

* `R`
* `tree-sitter` CLI
* `node`
* a C compiler/toolchain
* `curl` and `tar`

On macOS, install the required tools with Homebrew:

```bash
brew install neovim r tree-sitter-cli node
```

If Xcode Command Line Tools are not already installed, also run:

```bash
xcode-select --install
```

On Ubuntu, install the required tools with `apt`:

```bash
sudo apt update
sudo apt install -y neovim r-base tree-sitter-cli nodejs npm build-essential curl tar
```

Notes:

* `nvim-treesitter` on the `main` branch needs the `tree-sitter` executable on
  your `PATH`.
* `R.nvim` needs `node` on your `PATH` to generate the `rout` tree-sitter
  parser from `grammar.js`.
* If parser installs fail after Neovim plugins are updated, run `:TSUpdate`
  inside Neovim.

## git
* [`git-prompt.sh`](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh)
  reports the current branch in the bash prompt.

* On a new machine, use the gitconfig file herein to get the basics of
  `$HOME/.gitconfig` set up. Make sure to add the following section via `git
  config --global user.email` and `git config --global user.name` or explicitly
  in the `$HOME/.gitconfig` file.

```
[user]
  email = <email>
  name =  <name>
  signingkey = <KEYID>
```

* To get the signing key and let git know about it:
  <https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key>

```
gpg --list-secret-keys --keyid-format=long
git config --global user.signingkey <KEYID>
```

## bash

* `.bashrc` started from `/etc/skel/.bashrc` and has been modified
* `.bash_aliases`
* `~/.config/shell/env` is an optional machine-local shell file sourced by both
  `bash` and `zsh` for environment variables and host-specific setup.
* `~/.conda_initialize` is optionally sourced by `bash`.
* `~/.conda_init` is optionally sourced by `zsh`.
* `~/google-cloud-sdk/path.zsh.inc` and
  `~/google-cloud-sdk/completion.zsh.inc` are optionally sourced by `zsh` if
  the Google Cloud SDK is installed.

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
in your shell rc file.

## R

* `~/.Rprofile` sets default repositories and data.table print options.
* In interactive R sessions it attempts to load `colorout`.
* If `colorout` is not installed, R will print a startup message with the
  GitHub install command:

```r
remotes::install_github("jalvesaq/colorout")
```
