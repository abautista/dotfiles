#!/bin/bash

DOTFILESDIR="$(pwd -P)"

for DOTFILE in {vimrc,zshrc,gitconfig,gitignore_global}; do
	HOMEFILE="$HOME/.$DOTFILE"
	DIRFILE="$DOTFILESDIR/$DOTFILE"
	ln -sfv "$DIRFILE" "$HOMEFILE"
done
