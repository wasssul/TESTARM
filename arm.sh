#!/bin/sh
SESSION=ARM-PROG
tmux new-session -d -s $SESSION

tmux split-window -h 
tmux send-keys 'cd Test01' 'C-m'

tmux -2 attach-session -t $SESSION





  
