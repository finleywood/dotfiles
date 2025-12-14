# Zsh stuff
export EDITOR='vim'

autoload -U colors && colors

autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -G'
alias grep='grep --color=auto'

PROMPT='%F{green}%n@%m%f:%F{blue}%~%f%# '

# Other stuff

if [[ -z "$TMUX" && -o interactive ]]; then
  exec tmux
fi
