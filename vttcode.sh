#!/bin/bash

cd ~/codespace/websites/visionarytheotravel
'clear'

# Create a new tmux session named 'visionarytheotravel'
tmux new-session -d -s visionarytheotravel
tmux send-keys -t visionarytheotravel:0 'clear' C-m

# Create and rename the first window to 'code'
tmux rename-window -t visionarytheotravel:0 'code'
tmux send-keys -t visionarytheotravel:0 'nvim .' C-m

# Create and rename the second window to 'terminal'
tmux new-window -t visionarytheotravel:1
tmux rename-window -t visionarytheotravel:1 'terminal'
tmux send-keys -t visionarytheotravel:1 'clear' C-m
tmux split-window -t visionarytheotravel:1 -h -p 30
tmux send-keys -t visionarytheotravel:1 'clear' C-m

# Create a third window (no need to rename it as you didn’t specify a name)
tmux new-window -t visionarytheotravel:2
tmux rename-window -t visionarytheotravel:2 'file manager'
tmux send-keys -t visionarytheotravel:2 'yazi' C-m

# Select the first window
tmux select-window -t visionarytheotravel:0

# Attach to the tmux session
tmux attach -t visionarytheotravel
