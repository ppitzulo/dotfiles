#!/bin/bash
# This is a helper script to run the bpcs command in a tmux window with my tmux config

tmux neww bash -c "bpcs | fzf --ansi"
