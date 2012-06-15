#!/bin/bash

# Shell function to turn .less files in the current directory
# into minified CSS files.
lesscss(){
  for file in $(find . -type f | grep .less$); do
    css_file=${file/less/css}
    lessc -x $file > $css_file
  done
}

sk(){
  if [ "$1" != "" ]; then
    screen -S $1 -X kill
    echo "Killed screen: $1"
  fi
}