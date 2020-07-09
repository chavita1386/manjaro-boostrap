export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="wuffers"
plugins=(
    git
    golang 
    history
    history-substring-search
    sudo
    osx
    lein
    node
    npm
    jump    
    mosh
    k
    z    
    zsh-completions
    almostontop
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

## ALIAS
alias c="clear"
alias ez="vi $HOME/.zshrc"
# Share screen with VLC to Google Meet
# [ 0,    0, 1920, 1080] for my entire left screen
# [ 0, 1920, 1920, 1080] for my entire right screen
alias meet="vlc --no-video-deco --no-embedded-video --screen-fps=30 --screen-top=32  --screen-left=0  --screen-width=1920  --screen-height=1000  screen://"

## GIT
GIT_AUTHOR_NAME="Chavita1386"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="chavita1386@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global credential.helper "cache --timeout 7200"

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
export PATH=$GOPATH:$PATH


## CUSTOM FUNCTIONS

# Create a new directory and enter it
function ninit() {
  nvim ~/.config/nvim/init.vim
}
function nzsh() {
  nvim ~/.zshrc
}
function code() {
  cd ~/code
}
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

