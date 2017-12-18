#!/bin/bash

SCRIPT_DIR=`dirname $0`
FULL_DIR="`( cd \"$SCRIPT_DIR\" && pwd )`"

test -f /usr/local/bin/brew && brew install tmux
test -f /usr/bin/apt-get && apt-get install -y tmux

rm -f ~/.tmux.conf
ln -s $FULL_DIR/tmux.conf ~/.tmux.conf
