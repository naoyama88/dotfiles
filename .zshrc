# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/naoya/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# copied at 2019/09/29 from ~/dotfiles/.bashrc
# ==========================================================================================================================================
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
# function parse_git_branch {
#     git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
# }

# function promps {
#     # declare some color to change color easily
#     local  BLUE="\[\e[1;34m\]"
#     local  RED="\[\e[1;31m\]"
#     local  GREEN="\[\e[1;32m\]"
#     local  WHITE="\[\e[00m\]"
#     local  GRAY="\[\e[1;37m\]"
#     local  LIGHT_BLUE="\[\e[36m\]"
#     local  YELLOW="\[\e[33m\]"
#     case $TERM in
#         xterm*) TITLEBAR='\[\e]0;\W\007\]';;
#         *)      TITLEBAR="";;
#     esac
#     local BASE="\u@\h"
#     # PS1="[${LIGHT_BLUE}\u\[\e[m\]@\h] \s\v \[\e[33m\]\w\[\e[m\]\n\\$ "
#     PS1="[${TITLEBAR}${GREEN}${BASE}${WHITE}] \s\v ${YELLOW}\w${RED}\$(parse_git_branch)${BLUE}\n\$${WHITE} "
# }
# promps
# -----------------------------------------------------------------------
# ==========================================================================================================================================


# copied at 2019/09/29 from ~/dotfiles/.bash_profile
# ==========================================================================================================================================
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
# ==========================================================================================================================================

echo "bash kara ichido zsh ni utsutte sonoato bash ni modotta ze!"
echo "2019/09/28 made bash wo tsukatte itaze!"
echo "2019/09/28 kara zsh wo tsukau koto ni shitaze!!"
echo "anounced from .zshrc"

echo "Shell level is ${SHLVL}"
if [ $SHLVL = 1 ]; then
    tmux
fi
