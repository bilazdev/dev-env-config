#!/bin/bash

if ! test -n "$TMUX"; then
    if test -n "$(tmux list-sessions 2> /dev/null)"; then
      tmux a
    else 
      tmux
    fi
fi
