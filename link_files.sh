#!/bin/bash

# Easily link all the dotfiles after a `git pull`.
#
# Usage:
#   bash link_files.sh


link_file() {
  ln -s $PWD/$file $HOME/$file && echo "Linked ~/$file"
}

rm_and_link() {
  rm $HOME/$file && link_file
}

prompt_deletion() {
  read -n1 -p "Delete ~/$file and link new one? (y/n) "
  printf "\n"
  [[ $REPLY == [yY] ]] && rm_and_link || echo "!!! File not linked."
}


# Loop through available dotfiles...
for file in $(ls -a | grep ^\\.[a-z] | grep -v .git$); do
  if [ -e $HOME/$file ]; then
    prompt_deletion
  else
    link_file
  fi
done

# All done.
echo "\nReturning to shell...\n"