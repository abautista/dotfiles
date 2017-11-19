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

export PATH="$(pwd -P)/.bin:$PATH"
