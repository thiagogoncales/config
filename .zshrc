export PROMPT='%~ %# '
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias gst="git status"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gam="git add -u && git commit -m"
alias gpl="git pull"
alias glog="git log --oneline -n"

alias lsgrep='find . -print | grep'
alias sdu="ls | xargs du -hsc"

function gpushorigin() {
    git push origin $(git rev-parse --abbrev-ref HEAD)
}

function mcd() {
    mkdir -p "$@"
	cd "$@"
}

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
