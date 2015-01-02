#!/bin/bash

# if [[ $(pgrep emacs) == '' ]];then
#    emacs --daemon
# fi

# start our local share of the text editor
emacsclient -c &

# start our shared terminal
if [[ $(pgrep tmux) == '' ]];then
  tmux new -s pair
else
  tmux attach
fi
