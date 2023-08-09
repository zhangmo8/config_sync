

# on my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

SPACESHIP_TIME_SHOW="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# end on my zsh


# git 
alias gb="git branch"
alias gbd="git branch -d"
alias gba="git branch -a"
alias gcl="git clone"
alias gs="git status"

alias gcm="git commit -m"
alias gcmu="git commit --amend"

alias ga="git add"
alias gaa="git add ."
alias grs="git reset head"
alias grc="git reset --soft HEAD^ && git reset head"

alias gpl="git pull"
alias gps="git push"

alias gacm="git add . && git commit -m"

alias gck='git checkout'
alias gckb='git checkout -b'

alias gplr="git pull --rebase"

alias gfrb='git fetch origin && git rebase'

alias gm='git merge'

# git end

# npm
alias i="ni"
alias d="nr dev"
alias s="nr start"

# npm end

# vscode
alias c="code ."

# vscode end

# pnpm
export PNPM_HOME="/Users/ssa-user/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# proxy
function proxy() {
  export http_proxy=http://127.0.0.1:7890
  export https_proxy=http://127.0.0.1:7890
  git config --global http.proxy 'http://127.0.0.1:7890';
  git config --global https.proxy 'http://127.0.0.1:7890';
}

function unproxy() {
  unset http_proxy
  unset https_proxy
  git config --global --unset https.proxy
  git config --global --unset http.proxy
}

# proxy end

# github

function github() {
 git config --global user.name "zhangmo8"
 git config --global user.email "wegi866@gmail.com"
}


# github end

# flutter

alias f="fvm flutter"

# flutter end



# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
