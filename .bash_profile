# This is the config file to be applied everytime terminal is opened
# If you want to apply config everytime you run shell (like bash, zsh), go to .bashrc

## 2019/09/28 quit using and start using zsh

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
