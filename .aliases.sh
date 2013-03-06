#!/bin/bash

# Use the whatismyip.py script to find IP
alias ip='curl ifconfig.me'

# Colored ls output
alias ls='ls -G'
alias ll='ls -Gl'
alias la='ls -Gla'

# Convenient shell commands
alias cd..='cd ..'
alias ..='cd ..'

# Reload ~/.bash_profile
alias reload='source ~/.bash_profile'

# Keep from clobbering directories
alias mkdir='mkdir -p'