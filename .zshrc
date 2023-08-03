# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/sillypoise/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

# Aliases
alias grep="rg"
alias cat="bat"
alias find="fd"
alias ls="exa"
alias ll="exa -l"
alias nw="tmux-fzf"
alias sed="sd"
alias sqsh="squoosh-cli"
alias wh="cd /mnt/c/Users/sillypoise"
alias tmuxa="tmux attach -t home"
alias pnx="pnpm nx"
alias vim="nvim"
alias szshrc="source ~/.zshrc"
alias zshrc="nvim ~/.zshrc"
alias tmuxrc="nvim ~/.tmux.conf"
# SSH
alias sshg='eval $(ssh-agent) && ssh-add ~/.ssh/gh_id_ed25519'
alias sshgv='eval $(ssh-agent) && ssh-add ~/.ssh/vanta_gh_id_ed25519'
alias ssha='eval $(ssh-agent) && ssh-add ~/.ssh/aws_id_ed25519'

# work
alias motypes="make generate-types"                                                                                                                                                                                                                                                                                                                                      │
alias modev="make dev-start api-service auth-service resource-fetcher resource-fetcher-xl resource-fetcher-live test-runner web web-client"                                                                                                                                                                                                                              │
alias mologs="make dev-watch-logs resource-fetcher"                                                                                                                                                                                                                                                                                                                      │
alias moclean="make clean npm-ci generate types"                                                                                                                                                                                                                                                                                                                         │

## Python aliases
alias py="python3"
alias pvenv='python3 -m venv venv && ln -s venv/bin/activate .activate.sh && echo "deactivate" > .deactivate.sh'
## SQLite
alias sqlite="sqlite3"
alias sqlu="sqlite-utils"

# git aliases
alias g="git"
alias gs="git status"
alias ga="git add"
alias gci="git commit"
alias gP="git push"
alias gf="git fetch"
alias gp="git pull"
alias gpr="git pull --rebase"
alias gco="git checkout"

# GH & Copilot CLI 
alias ghcs="gh codespace"
alias ghcsn="gh codespace create --repo VantaInc/obsidian --location EastUs --branch main --machine largePremiumLinux"
eval "$(github-copilot-cli alias -- "$0")"

# Remove folder highlight in Windows
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS

# editor config
export EDITOR="/usr/bin/nvim"

# network util
my_public_ip=$(curl -s ifconfig.me)
export MY_PUBLIC_IP="$my_public_ip"

# tmux-tzf
export PATH="/home/sillypoise/bin:$PATH"
export PATH="/home/sillypoise/.local/bin:$PATH"

# go lang
export GOPATH="/home/sillypoise/bin/go"
export PATH="/home/sillypoise/bin/go/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export VOLTA_FEATURE_PNPM
# volta end

# flyctl
# flytctl end

# Terraform
export TF_VAR_my_ip_address="${MY_PUBLIC_IP}/32"

# Turso

# broot shell integration
source /Users/howdy/.config/broot/launcher/bash/br

# aactivator
eval "$(aactivator init)"

# Starship Prompt
eval "$(starship init zsh)"
