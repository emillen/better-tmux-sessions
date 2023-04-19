#!/usr/bin/env bash
# vim: set ft=sh :

# Options from tmux
ta_binding_option="$(tmux show-option -gwv "@better-tmux-sessions-bind-ta")"
ts_binding_option="$(tmux show-option -gwv "@better-tmux-sessions-bind-ts")"
tn_binding_option="$(tmux show-option -gwv "@better-tmux-sessions-bind-tn")"

# Default bindings if option not set
ta_binding="${ta_binding_option:-"C-a"}"
tn_binding="${tn_binding_option:-"C-n"}"
ts_binding="${ts_binding_option:-"C-s"}"

current_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux bind-key "${ta_binding}" run-shell -b "$current_dir/scripts/ta"
tmux bind-key "${ts_binding}" run-shell -b "$current_dir/scripts/ts"
tmux bind-key "${tn_binding}" run-shell -b "$current_dir/scripts/tn --path ~ --ask-session"
