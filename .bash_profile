set -o vi
shopt -s globstar
PS1="\w$ "
alias ll="ls -lah"
alias v="vim"
alias g="git"
alias gs="git status -s"
alias ga="git add ."
alias gr="git reset"
alias gst="git status"
alias gl="git log --d --graph --all"
alias gld="git log --d --graph"
alias gci="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gdi="git diff --cached"
alias gpush="git push origin head"
alias gpull="git pull --rebase"
alias runmocha="mocha --watch --require spec/setup.js"
alias sourcebash="source ~/.bash_profile"
alias vgl="git log --graph --pretty=format:'%h - %d %s (%cr) <%an>' | vim -R -c 'set filetype=git nowrap' -"
alias stashandpush="g stash && gpull && gpush && g stash pop"
stty -echoctl #prevent echoing ^C-c to terminal
stty -ixon #allow c-s to forward-search in terminal
bind -x '"\C-\e41": clear;'

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
alias npmplease="nvm use && rm -rf node_modules/ && rm -f package-lock.json && npm install"
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
alias r="ranger"
alias vi="vim"
alias btc="curl 'https://www.bitstamp.net/' -H 'Accept-Language: \
en-US,en;q=0.9,he;q=0.8' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: \
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like \
Gecko) Chrome/63.0.3239.132 Safari/537.36' -H 'Accept: \
text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8' \
-H 'Cookie: \
visid_incap_99025=qtuDHy9URa+cWMIqoJiRsKF+ZFoAAAAAQUIPAAAAAAB4LzPPURh/UtUZ/tQedbrq; \
csrftoken=jkSlVTzBDgjMcd7XuihjGu6RTaq3Bboq; \
nlbi_99025=PpGuMR4ywDM+5Qwz8F1n9AAAAAChyjHdplEf43uIgd1vNI9d; __utmc=209907974; \
incap_ses_729_99025=sp2aRwP6ww1vA+u+5u0dCiIlZloAAAAARc10XyqAby+IEomlNReVXQ==; \
incap_ses_253_99025=7k/KF7OfxTAFROdRHdeCA9BZaFoAAAAAgdmlJh6pIXe26LWKJk4dKg==; \
__utmt=1; __utma=209907974.2021309398.1516535602.1516788326.1516788348.25; \
__utmz=209907974.1516788348.25.2.utmcsr=google|utmccn=(organic)|utmcmd=organic|utmctr=(not%20provided); \
__utmb=209907974.1.10.1516788348' -H 'Connection: keep-alive' -s | less | grep \
\"<title>\" | sed 's/		<title>(\(.*\)).*<\/title>/\1/g'"
alias youtube="mpsyt"
alias openfiles=~/dotfiles/scripts/openfiles.sh
alias morfixweb=~/dotfiles/scripts/morfix.sh
alias morfixapi=~/dotfiles/scripts/morfixapi.sh
alias morfix=morfixweb

convertHeb2utf8() {
    iconv -f iso-8859-8 -t utf-8 ${1} > ${2}
}
alias heb2utf=convertHeb2utf8

. ~/.bash_profile_secrets
. ~/dotfiles/z/z.sh

alias printcolors="for i in {0..255}; do   printf \"\x1b[38;5;${i}mcolour${i}\x1b[0m\n\"; done"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="/Users/alonn/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
PATH="~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools:${PATH}"
PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:${PATH}"
PATH="~/google-cloud-sdk/bin:${PATH}"
export PATH

export INPUTRC="~/.inputrc"

export REACT_EDITOR=vim
export EDITOR=vim

# For weechat (dispaly hebrew)
export LANG=en_US.UTF-8 LC_CTYPE="en_US.UTF-8"
export PATH="/usr/local/opt/curl/bin:$PATH"

export GOPATH="/Users/alonn/go"
export BC_ENV_ARGS="-q $HOME/.bc"
