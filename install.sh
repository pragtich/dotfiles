#!/bin/bash
shopt -s nullglob
shopt -s dotglob
GLOBIGNORE="install.sh:.git"
for f in *; do 
  echo "Synlinking $f"
  ln -fs $PWD/$f ../$f
done