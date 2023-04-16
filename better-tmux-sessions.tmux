#!/usr/bin/env bash
# vim: set filtype=sh :

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key "C-a" run-shell "$CURRENT_DIR/scripts/ta.sh"
tmux bind-key "C-s" run-shell "$CURRENT_DIR/scripts/ts.sh"
