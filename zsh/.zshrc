# environment
# -----------
export EDITOR="/usr/bin/nvim"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

# aliases
# -------
alias c=clear
alias cutcpp='cookiecutter gh:abautista/cookiecutter-cpp'

# pyenv
# -----
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# configuration oh-my-zsh.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
DEFAULT_USER="abautista"
plugins=(git)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
