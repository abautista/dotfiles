# Aliases
if [ -r ~/.aliases ]; then
  source ~/.aliases
fi

# Check which emacs configuration I am using
if [[ $(readlink $HOME/.emacs.d) == "$HOME/.emacs.d.spacemacs" ]]; then
  export EMACS_CONFIGURATION="spacemacs"
fi

if [[ $(readlink $HOME/.emacs.d) == "$HOME/.emacs.d.abautista" ]]; then
  export EMACS_CONFIGURATION="abautista"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="$(pwd -P)/.bin":"$(pwd -P)/.local/bin:$PATH"
