export GPG_TTY=$(tty)
PATH=$HOME/.local/bin:/Library/TeX/texbin:$PATH
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/sbin:$PATH"
autoload -U colors && colors
autoload -Uz compinit && compinit
source $HOME/.git-prompt.sh

NEWLINE=$'\n'
setopt PROMPT_SUBST ; PS1='${NEWLINE}%{$fg[magenta]%}%n@%m %{$reset_color%}%{$fg[blue]%}[%~]%{$reset_color%}%{$fg[green]%}$(__git_ps1 " (%s)")%{$reset_color%}${NEWLINE}\$ '

# brew install coreutils
alias ls='/usr/local/bin/gls --color=auto --group-directories-first'
#alias grep='grep --color=auto'
alias ll='/usr/local/bin/gls --color=auto -hl --group-directories-first'
alias la='/usr/local/bin/gls --color=auto -hla --group-directories-first'

alias rm='rm -i'
alias R='R --no-save --no-restore --quiet'
alias tree='tree --dirsfirst --charset ascii'

source $HOME/.conda_init

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/peterdewitt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/peterdewitt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/peterdewitt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/peterdewitt/google-cloud-sdk/completion.zsh.inc'; fi

