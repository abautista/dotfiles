#!/bin/bash

DOTFILESDIR="$(pwd -P)"

for DOTFILE in {vimrc,vim,zshrc,gitconfig,gitignore_global}; do
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
