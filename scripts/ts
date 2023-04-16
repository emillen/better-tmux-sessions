#!/usr/bin/env bash

folder_to_search=$1

if [[ -z $folder_to_search ]]; then
    folder_to_search=~
fi

all_folders=$(find $folder_to_search -maxdepth 3 -type d  && zoxide query -l)
folder_to_session=$(echo  "$all_folders" | fzf-tmux -p)

if [[ -z $folder_to_session ]]; then
    exit 0
fi


has_session() {
    if tmux has-session -t $(basename $folder_to_session) 2>/dev/null; then
        return 0
    else
        return 1
    fi
}

switch_session() {
    tmux switch-client -t $(basename $folder_to_session)
}

create_session() {
    tmux new-session -s $(basename $folder_to_session) -n $(basename $folder_to_session) -d
}

attach_session() {
    tmux attach -t $(basename $folder_to_session)
}

in_tmux_session() {
    if [[ -n $TMUX ]]; then
        return 0
    else
        return 1
    fi
}

cd $folder_to_session


if in_tmux_session; then
    if has_session; then
        switch_session
    else
        create_session
        switch_session
    fi
    exit 0
else
    if has_session; then
        attach_session
    else
        create_session
        attach_session
    fi
    exit 0
fi
