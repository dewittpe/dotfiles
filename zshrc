export GPG_TTY=$(tty)

if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

path=(
  "$HOME/.local/bin"
  "/Library/TeX/texbin"
  $path
)

if command -v brew >/dev/null 2>&1; then
  [[ -d "$(brew --prefix)/opt/make/libexec/gnubin" ]] &&
    path=("$(brew --prefix)/opt/make/libexec/gnubin" $path)
fi

export PATH

autoload -U colors && colors
autoload -Uz compinit && compinit

[[ -f "$HOME/.git-prompt.sh" ]] && source "$HOME/.git-prompt.sh"

NEWLINE=$'\n'
setopt PROMPT_SUBST
PS1='${NEWLINE}%{$fg[magenta]%}%n@%m %{$reset_color%}%{$fg[blue]%}[%~]%{$reset_color%}%{$fg[green]%}$(__git_ps1 " (%s)")%{$reset_color%}${NEWLINE}\$ '

if command -v gls >/dev/null 2>&1; then
  alias ls='gls --color=auto --group-directories-first'
  alias ll='gls --color=auto -hl --group-directories-first'
  alias la='gls --color=auto -hla --group-directories-first'
fi

alias rm='rm -i'
alias R='R --no-save --no-restore --quiet'
alias tree='tree --dirsfirst --charset ascii'

[[ -f "$HOME/.conda_init" ]] && source "$HOME/.conda_init"
[[ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]] && source "$HOME/google-cloud-sdk/path.zsh.inc"
[[ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]] && source "$HOME/google-cloud-sdk/completion.zsh.inc"
[[ -f "$HOME/.config/shell/env" ]] && source "$HOME/.config/shell/env"

