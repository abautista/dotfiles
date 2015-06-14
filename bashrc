# ~/.bashrc: executed by bash(1) for non-login shells

# path
PATH=/usr/local/bin:/usr/local/share/npm/bin:$HOME/bin:$PATH

# alias definitions
if [ -f ~/.aliases ]; then
   . ~/.aliases
fi

# virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh


