#!/bin/bash
shopt -s nullglob
shopt -s dotglob
GLOBIGNORE="install.sh:.git:bin"

cd ~/dotfiles

for f in *; do
    if [[ -f ../$f ]] && [[ ! -s ../$f ]]; then
	echo "Backing up original file $f to ${f}-orig"
	mv ../$f ../${f}-orig
    fi
  echo "Synlinking $f"
  ln -fs "$PWD/$f" "../$f"
done

GLOBIGNORE=""
mkdir -p ../.local/bin
for f in bin/*; do
  echo "Symlinking executable $f"
  ln -fs "$PWD/$f" "../.local/$f"
done	 

cd -
