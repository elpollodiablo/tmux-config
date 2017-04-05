#!/bin/bash

SCRIPT_DIR=`dirname $0`
FULL_DIR="`( cd \"$SCRIPT_DIR\" && pwd )`"

rm -f ~/.tmux.conf
ln -s $FULL_DIR/tmux.conf ~/.tmux.conf
