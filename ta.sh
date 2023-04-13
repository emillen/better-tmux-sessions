#!/usr/bin/env bash

session_name=$1

if [[ -z $session_name ]]; then
    session_name=$(tmux list-sessions -F "#S" | fzf-tmux -p --preview "tmux capture-pane -ep -t {}")
fi

if [[ -z $session_name ]]; then
    exit 0
fi

if [[ -z $TMUX ]]
then
    tmux attach -t ${session_name}
else
    tmux switch-client -t ${session_name}
fi
