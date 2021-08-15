set -o vi

function zle-line-init zle-keymap-select {
    # prompt_color="${${KEYMAP/vicmd/magenta/(main|viins)/red}"
    # PS1="%{$prompt_color%}%n%\@%m%  %~ %%%{$reset_color%} "
    # zle reset-prompt
}

# prompt_color="\$reset_color"
zle -N zle-line-init
zle -N zle-keymap-select
# Allow command line editing in an external editor.
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line # ESC-v to edit in an external editor.
bindkey -v
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^B' backward-char
bindkey '^F' forward-char

alias ll="ls -lah"
alias v="vim"
alias g="git"
alias gs="git status -s"
alias gsc="git diff --name-only --diff-filter=U"
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
alias runmocha="mocha --watch --require spec/setup.js"
alias sourcebash="source ~/.bash_profile"
alias vgl="git log --graph --pretty=format:'%h - %d %s (%cr) <%an>' | vim -R -c 'set filetype=git nowrap' -"
alias glp="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset'"
alias stashandpush="g stash && gpull && gpush && g stash pop"
alias iphone="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"
alias resetsound="sudo killall coreaudiod"
alias vim_clean="vim -u NONE -c 'set nocompatible'"
stty -echoctl #prevent echoing ^C-c to terminal
stty -ixon #allow c-s to forward-search in terminal
#bind -x '"\C-\e41": clear;'

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

alias ntw="npm run test:watchSingle "
alias jtw="./node_modules/jest-cli/bin/jest.js --watch "
alias yoshitest="./node_modules/mocha/bin/mocha --watch-extensions ts,tsx --watch --recursive --require ~/projects/yoshi/node_modules/yoshi/config/test-setup.js"
alias santatest="node $NODE_DEBUG_OPTION --max_old_space_size=4096 js/test/jasmine.js --group packages "
alias npmpublic="npm config set registry https://registry.npmjs.org/"
alias npmprivate="npm config set registry http://repo.dev.wix/artifactory/api/npm/npm-repos"
alias yarnpublic="yarn config set registry https://registry.npmjs.org/"
alias yarnprivate="yarn config set registry http://repo.dev.wix/artifactory/api/npm/npm-repos"
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

export REACT_EDITOR=vim
export EDITOR=vim

# For weechat (dispaly hebrew)
export LANG=en_US.UTF-8 LC_CTYPE="en_US.UTF-8"
export PATH="/usr/local/opt/curl/bin:$PATH"

export GOPATH="/Users/alonn/go"
export BC_ENV_ARGS="-q $HOME/.bc"
source '/Users/alonn/projects/z/z.sh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$PATH:$HOME/.local/bin"

source "$HOME/.bazelenv"
