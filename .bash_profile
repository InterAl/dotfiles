set -o vi
PS1="\w$ "
alias ll="ls -la"
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

alias npmpublic="npm config set registry https://registry.npmjs.org/"
alias npmprivate="npm config set registry http://repo.dev.wix/artifactory/api/npm/npm-repos"
export REACT_EDITOR=vim

alias sshresonators="ssh -i \"./r_admin.pem\" ubuntu@ec2-52-27-92-5.us-west-2.compute.amazonaws.com"
alias runnodejs="sudo PORT=80 MENUS_KEY=c905d9c5-aa23-407e-aed7-80deef347664 ORDERS_KEY=8c42d010-12f6-4d78-80a5-cdac5ab6165e ORDERS_DEV_KEY=380f016c-43e2-4bee-9ea0-4e56f902ec57 SEATING_KEY=9effad90-49ca-4f64-90a3-9d439ac6a539 npm start"
. ~/dotfiles/z/z.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
