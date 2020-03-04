export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="wuffers"
plugins=(git tig docker docker-compose golang pip)
plugins+=( history history-substring-search httpie sudo vagrant postgres )
plugins+=( osx lein node npm jump gulp mosh )
plugins+=( k z alias-tips zsh-completions almostontop zsh-autosuggestions )
plugins+=( zsh-syntax-highlighting )

source $ZSH/oh-my-zsh.sh

## ALIAS
alias c="clear"
alias ez="vi $HOME/.zshrc"
alias server="python -m SimpleHTTPServer"
alias socks="ssh -vND 8888 kim"
alias dpsa="docker ps -a"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"

## GIT
GIT_AUTHOR_NAME="Chavita1386"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="chavita1386@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
# Set a default editor to avoid "Could not execute editor" error
#git config --global core.editor "/usr/bin/vim"

## NPM
npm set init.author.email "chavita1386@gmail.com"
npm set init.author.name "Chavita1386"
npm set init.license "MIT"

##### EXPORT

# Node.JS
#export PATH="$PATH:`yarn global bin`"

## JAVA / CLOJURE
export JAVA_HOME=$(which java)
export M2=$HOME/.m2
export PATH=$PATH:$M2

## GO
export GOPATH=$HOME/code/go
export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'


## CUSTOM FUNCTIONS

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}
function mdt() {
    markdown "$*" | lynx -stdin
}

function mdb() {
    local TMPFILE=$(mktemp)
    markdown "$*" > $TMPFILE && ( xdg-open $TMPFILE > /dev/null 2>&1 & )
}
# Git clone + npm install
function gcn {
    url=$1;
    if [ -n "${1}" ]; then
        echo 'OK'
    else
        echo 'Koooooooooooooooo'
    fi
    cd ~/code;
    reponame=$(echo $url | awk -F/ '{print $NF}' | sed -e 's/.git$//');
    git clone $url $reponame;
    cd $reponame;
    npm install;
}
