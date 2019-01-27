# Aliases
# -------

alias server='open http://localhost:8000 && python -m SimpleHTTPServer'
alias c=clear
alias cutcpp='cookiecutter gh:abautista/cookiecutter-cpp'

# Docker
alias dps='docker ps -a'
alias dco='docker-compose'

# emacs configurations
alias sem='switch_emacs.sh spacemacs; export EMACS_CONFIGURATION="spacemacs"'
alias em='switch_emacs.sh abautista; export EMACS_CONFIGURATION="abautista"'

# pyenv
# -----
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Check which emacs configuration I am using
# ------------------------------------------
if [[ $(readlink $HOME/.emacs.d) == "$HOME/.emacs.d.spacemacs" ]]; then
  export EMACS_CONFIGURATION="spacemacs"
fi

if [[ $(readlink $HOME/.emacs.d) == "$HOME/.emacs.d.abautista" ]]; then
  export EMACS_CONFIGURATION="abautista"
fi

# Path
# ----
export PATH="$(pwd -P)/.bin":"$(pwd -P)/.local/bin:$PATH"
