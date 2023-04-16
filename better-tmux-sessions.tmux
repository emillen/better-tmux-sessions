#!/usr/bin/env bash
# vim: set filtype=sh :

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key "C-a" run-shell -b "$CURRENT_DIR/scripts/ta"
tmux bind-key "C-s" run-shell -b "$CURRENT_DIR/scripts/ts"
