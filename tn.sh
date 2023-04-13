#!/usr/bin/env bash

path=$1

if [[ -z $path ]]; then
    path=$PWD
fi

session=$(basename $path)

cd $path

tmux new-session -s ${session} -n ${session} -d

if [[ -z $TMUX ]]; then
    tmux attach -t ${session}
else
    tmux switch-client -t ${session}
fi
