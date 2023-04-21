# Option
## Prompting.
setopt PROMPT_CR
setopt PROMPT_SP

## History.
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## Directory.
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_MINUS

## enable completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' menu select=2

# OH MY ZSH
export ZSH="$HOME/.oh-my-zsh"

## Plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    colored-man-pages
)

# ZSH_THEME="robbyrussell"
eval "$(starship init zsh)"

source $ZSH/oh-my-zsh.sh

# Alias
## tmux
alias tm='tmux'
alias tml='tmux ls'
alias tma='tmux attach-session -t'
alias tmk='tmux kill-session -t'

## kubectl
alias vim="nvim"
alias k="kubectl"
alias kgp="kubectl get pod"
alias kgpw="kubectl get pod -o wide"
alias kdp="kubectl describe pod"
alias kgs="kubectl get svc"
alias kgsw="kubectl get svc -o wide"
alias kdno="kubectl describe node"
source <(kubectl completion zsh)

## linux
alias grep='grep --color=auto'
alias ll='ls -lGpFh'
alias la='ll -a'
alias ls="ls -F"
alias tree='tree -C'
alias ff='find . -type f -name'
alias h='history'
alias cp='cp -iv'
alias mv='mv -iv'
alias ln='ln -iv'
alias mkdir='mkdir -v'
alias rm='rm -i'
alias rmf='rm -rf'
alias df='df -h'   
alias free='free -h'
alias :q='exit'
