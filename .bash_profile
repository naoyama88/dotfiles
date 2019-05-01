if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
