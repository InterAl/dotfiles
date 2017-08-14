set -o vi
PS1="\w$ "
alias ll="ls -la"
alias v="vim"
alias g="git"
alias gs="g status -s"
alias gst="git status"
alias gl="git lg"
alias gci="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gdi="git diff --cached"
alias gpush="git push origin head"
alias gpull="git pull --rebase"
alias runmocha="mocha --watch --require spec/setup.js"
alias sourcebash="source ~/.bash_profile"
bind -x '"\C-\e41": clear;'

shopt -s histappend
shopt -s histreedit
shopt -s histverify
HISTCONTROL='ignoreboth'
PROMPT_COMMAND="history -a;history -c;history -r; $PROMPT_COMMAND"

export ANDROID_HOME=/usr/local/opt/android-sdk
PATH="~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools:${PATH}"
PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:${PATH}"
export PATH

getNpmVersion() {
    npm view $1 version
}

alias npmver=getNpmVersion
alias chromenosec="open -a Google\ Chrome --args --disable-web-security --user-data-dir=/foo"

export NVM_DIR="/Users/alonn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias ntw="npm run test:watchSingle "
alias npmpublic="npm config set registry https://registry.npmjs.org/"
alias npmprivate="npm config set registry http://repo.dev.wix/artifactory/api/npm/npm-repos"
export REACT_EDITOR=vim

. ~/.bash_profile_secrets
. ~/dotfiles/z/z.sh

alias printcolors="for i in {0..255}; do   printf \"\x1b[38;5;${i}mcolour${i}\x1b[0m\n\"; done"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export INPUTRC="~/.inputrc"
