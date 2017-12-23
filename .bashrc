# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

HISTFILESIZE=1000000
HISTSIZE=1000000
HISTIGNORE='ls:bg:fg:history:ll'

FOLDER=$HOME
export GOPATH=$FOLDER/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:~/bin:~/bin/tools

source ~/.liquidprompt/liquidprompt
export LP_BATTERY_THRESHOLD=30
export LP_RUNTIME_THRESHOLD=7
export LP_ENABLE_TIME=1


# added by travis gem
[ -f /home/chreri/.travis/travis.sh ] && source /home/chreri/.travis/travis.sh

~/.screenlayout/default.sh office

alias now="date +'%Y-%m-%d %H:%M:%S' | tr -d '\n'"
alias dh='hg pull -u ; hg merge ; hg commit -m "Merge" ; hg push ; hg log -l 8 --graph'
alias docker="sudo /usr/bin/docker"
alias dnf="sudo dnf"
alias docker-compose="sudo /usr/bin/docker-compose"
alias reset-hg='REPO_PATH=$(hg path default) ;  REPO_FOLDER=$(basename $(pwd)) ; cd .. ; rm -rf ./$REPO_FOLDER ; hg clone $REPO_PATH $REPO_FOLDER;  cd $REPO_FOLDER'

