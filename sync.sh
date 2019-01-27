#!/bin/bash

DOTFILESDIR="$(pwd -P)"

for DOTFILE in {common_shell_config.sh,bashrc,bash_profile,zshrc,gitconfig,gitignore_global,vim,vimrc,emacs.d.abautista,tmux.conf,bin}; do
    HOMEFILE="$HOME/.$DOTFILE"
    DIRFILE="$DOTFILESDIR/$DOTFILE"

    if [ -L $HOMEFILE ] && ! [ -d $DOTFILE ]
    then
	    ln -sfv "$DIRFILE" "$HOMEFILE"
    else
      rm -rv "$HOMEFILE"
      ln -sv "$DIRFILE" "$HOMEFILE"
    fi
done
