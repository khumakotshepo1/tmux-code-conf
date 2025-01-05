#!/bin/bash

cd ~/codespace/websites/visionarytheopayslips
'clear'

# Create a new tmux session named 'visionarytheopayslips'
tmux new-session -d -s visionarytheopayslips
tmux send-keys -t visionarytheopayslips:0 'clear' C-m

# Create and rename the first window to 'code'
tmux rename-window -t visionarytheopayslips:0 'code'
tmux send-keys -t visionarytheopayslips:0 'nvim .' C-m

# Create and rename the second window to 'terminal'
tmux new-window -t visionarytheopayslips:1
tmux rename-window -t visionarytheopayslips:1 'terminal'
tmux send-keys -t visionarytheopayslips:1 'clear' C-m
tmux split-window -t visionarytheopayslips:1 -h -p 30
tmux send-keys -t visionarytheopayslips:1 'clear' C-m

# Create a third window (no need to rename it as you didn’t specify a name)
tmux new-window -t visionarytheopayslips:2
tmux rename-window -t visionarytheopayslips:2 'file manager'
tmux send-keys -t visionarytheopayslips:2 'yazi' C-m

# Select the first window
tmux select-window -t visionarytheopayslips:0

# Attach to the tmux session
tmux attach -t visionarytheopayslips
