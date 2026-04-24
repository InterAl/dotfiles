set -o vi
# `shopt` exists only in bash; zsh supports `**` natively.
if [ -n "$BASH_VERSION" ]; then
    shopt -s globstar
fi
alias ll="ls -lah"
alias v="vim"
alias g="git"
alias gs="git status -s"
alias ga="git add ."
alias gr="git reset"
alias gst="git status"
alias gl="git log --decorate --graph --all"
alias gld="git log --decorate --graph"
alias gci="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gdi="git diff --cached"
alias gpush="git push origin head"
alias gpull="git pull --rebase"
alias sourcebash="source ~/.bash_profile"
alias vgl="git log --graph --pretty=format:'%h - %d %s (%cr) <%an>' | vim -R -c 'set filetype=git nowrap' -"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset'"
alias stashandpush="g stash && gpull && gpush && g stash pop"
alias resetsound="sudo killall coreaudiod"
alias vim_clean="vim -u NONE -c 'set nocompatible'"
if [ -t 0 ]; then
    stty -echoctl # prevent echoing ^C-c to terminal
    stty -ixon # allow c-s to forward-search in terminal
fi
if [ -n "$BASH_VERSION" ]; then
    bind -x '"\C-\e41": clear;'
elif [ -n "$ZSH_VERSION" ]; then
    # zsh equivalent: Ctrl-Shift-A clears the terminal.
    bindkey -s '^[[1;6A' 'clear\n'
fi

getNpmVersion() {
    npm view $1 version
}

alias npmver=getNpmVersion
alias chromenosec="open -a Google\ Chrome --args --disable-web-security --allow-running-insecure-content --ignore-certificate-errors"
alias chromenocert="open -a Google\ Chrome --args --ignore-certificate-errors"

killPort() {
    lsof -i tcp:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9
}
alias killport=killPort

alias npmplease="nvm use && rm -rf node_modules/ && rm -f package-lock.json && npm install"
alias npmpleasenonvm="rm -rf node_modules/ && rm -f package-lock.json && npm install"
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias r="ranger"
alias vi="vim"
alias youtube="mpsyt"
alias openfiles=~/dotfiles/scripts/openfiles.sh
alias morfixweb=~/dotfiles/scripts/morfix.sh
alias morfixapi=~/dotfiles/scripts/morfixapi.sh
alias morfix=morfixweb
alias m=morfix
alias eclimd="~/eclipse/java-photon/Eclipse.app/Contents/Eclipse/eclimd"
alias mvndeps="mvn dependency:tree -Doutput=deps"

convertHeb2utf8() {
    iconv -f iso-8859-8 -t utf-8 ${1} > ${2}
}
alias heb2utf=convertHeb2utf8

. ~/.bash_profile_secrets
[ -f ~/dotfiles/z/z.sh ] && . ~/dotfiles/z/z.sh

alias printcolors="for i in {0..255}; do   printf \"\x1b[38;5;${i}mcolour${i}\x1b[0m\n\"; done"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="/Users/alonn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
PATH="~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools:${PATH}"
PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:${PATH}"
PATH="~/google-cloud-sdk/bin:${PATH}"
PATH="~/apache-maven-3.5.4/bin:${PATH}"
export PATH

export INPUTRC="~/.inputrc"

export REACT_EDITOR=vim
export EDITOR=vim

# For weechat (dispaly hebrew)
export LANG=en_US.UTF-8 LC_CTYPE="en_US.UTF-8"
export PATH="/usr/local/opt/curl/bin:$PATH"

export GOPATH="/Users/alonn/go"
export BC_ENV_ARGS="-q $HOME/.bc"
export PATH="/Users/alonn/Downloads/protodep:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/alonn/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# >>> coursier install directory >>>
export PATH="$PATH:/Users/alonn/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"
