#!/bin/bash

case $1 in
    "spacemacs")
        if [ "$EMACS_CONFIGURATION" == "spacemacs" ]; then
            exit 1
        else
            emacs_path=~/.emacs.d.spacemacs
        fi;;

    "abautista")
        if [ "$EMACS_CONFIGURATION" == "abautista" ]; then
            exit 1
        else
            emacs_path=~/.emacs.d.abautista
        fi;;

    "clojurebook")
        if [ "$EMACS_CONFIGURATION" == "clojurebook" ]; then
          exit 1
        else
          emacs_path=~/.emacs.d.clojurebook
        fi;;

    *)
        echo "Shut the fuck off"
        exit 1;;
esac

echo "Switching from '$(readlink ~/.emacs.d)' to '$emacs_path'"

rm -rf ~/.emacs.d
ln -s $emacs_path ~/.emacs.d
