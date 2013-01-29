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

# Who doesn't love tree's colored output?
alias tree='tree -C'

# Aliases to interact with GNU screen
alias ss='screen -S'
alias sr='screen -r'
alias sls='screen -ls'
# Don't forget about sk function to kill screens.

# Apache
alias a2='sudo apachectl'