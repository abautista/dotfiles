# ~/.bashrc: executed by bash(1) for non-login shells

# path
PATH=/usr/local/bin:/usr/local/share/npm/bin:$HOME/bin:$PATH

# alias definitions
if [ -r ~/.aliases ]; then
  source ~/.aliases
fi

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
