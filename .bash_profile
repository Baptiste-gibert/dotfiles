# Add local bin to PATH
PATH="/usr/local/bin:${PATH}"
PATH="/usr/local/sbin:${PATH}"

# Add User bin to PATH
PATH="$HOME/bin:${PATH}"PATH

# Export the PATH
export PATH

# Node modules
export NODE_PATH="/usr/local/lib/node_modules"

# Get text
export PATH=/usr/local/Cellar/gettext/0.18.1.1/bin:$PATH

# Set default editor.
export EDITOR='subl -w'

# Source .aliases.sh file
[[ -s "$HOME/.aliases.sh" ]] && . "$HOME/.aliases.sh"

# Source .functions.sh file
[[ -s "$HOME/.functions.sh" ]] && . "$HOME/.functions.sh"

# The following is for a green git prompt of the current branch.
if [ -f ~/.git_completion.sh ]; then
  source ~/.git_completion.sh
fi

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working
  directory clean)" ]] && echo ""
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/*
  \(.*\)/[\1$(parse_git_dirty)]/"
}


# Cool characters: ✩ ✪ ⚡
#export PS1='\[\e[0:35m⌘\e[m \e[0:36m\w/\e[m \e[0:33m`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\e[m\]'
#export PS1='\u:\W $(__git_ps1 "(\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]) ")✩  '
export PS1='\[\e[0:35m⌘\e[m \e[0:36m\w $(__git_ps1 "\[\e[0m\](\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]) ")';

# MySQL
export PATH=$PATH:/usr/local/mysql/bin