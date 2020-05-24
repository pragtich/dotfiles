#!/bin/bash
shopt -s nullglob
shopt -s dotglob
GLOBIGNORE="install.sh:.git:bin"
for f in *; do 
  echo "Synlinking $f"
  ln -fs "$PWD/$f" "../$f"
done

GLOBIGNORE=""
mkdir -p ../.local/bin
for f in bin/*; do
  echo "Symlinking executable $f"
  ln -fs "$PWD/$f" "../.local/$f"
done	 
