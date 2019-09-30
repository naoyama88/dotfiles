# This is the config file to be applied everytime you run shell (like bash, zsh)
# If you want to apply config everytime terminal is opened, go to .bash_profile

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$(brew --prefix homebrew/core/php@7.2)/bin:$PATH"

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls -FG'
alias tree='tree -C'
alias vi='vim'
alias e='emacs'
# reference https://dev.classmethod.jp/tool/iterm2-ssh-change-profile/
alias ssh='~/bin/ssh-change-profile.sh'

# reference https://qiita.com/caad1229/items/6d71d84933c8a87af0c4
# -----------------------------------------------------------------------
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

function promps {
    # declare some color to change color easily
    local  BLUE="\[\e[1;34m\]"
    local  RED="\[\e[1;31m\]"
    local  GREEN="\[\e[1;32m\]"
    local  WHITE="\[\e[00m\]"
    local  GRAY="\[\e[1;37m\]"

    local  LIGHT_BLUE="\[\e[36m\]"
    local  YELLOW="\[\e[33m\]"

    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\W\007\]';;
        *)      TITLEBAR="";;
    esac
    local BASE="\u@\h"
    # PS1="[${LIGHT_BLUE}\u\[\e[m\]@\h] \s\v \[\e[33m\]\w\[\e[m\]\n\\$ "
    PS1="[${TITLEBAR}${GREEN}${BASE}${WHITE}] \s\v ${YELLOW}\w${RED}\$(parse_git_branch)${BLUE}\n\$${WHITE} "
}
promps
# -----------------------------------------------------------------------
