#!/bin/bash

SCRIPT_DIR=`dirname $0`
FULL_DIR="`( cd \"$SCRIPT_DIR\" && pwd )`"

test -e /usr/local/bin/brew && brew install tmux
test -e /usr/bin/apt-get && sudo apt-get install -y tmux

rm -f ~/.tmux.conf
ln -s $FULL_DIR/tmux.conf ~/.tmux.conf
