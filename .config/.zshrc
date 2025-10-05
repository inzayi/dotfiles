bindkey -v  # Enable vi mode

unset LAST_LOGIN

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# general aliases
alias c="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -la"
alias mindnest="cd $HOME/Desktop/projects/mindnest"

# pnpm
alias pi="pnpm install"
alias dev="pnpm dev"

# git aliases
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gl="git log --oneline --graph --decorate"

# utils
killport() {
  lsof -ti tcp:$1 | xargs kill -9
}

chpwd() {
  ls
}

eval "$(starship init zsh)"
