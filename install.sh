#!/bin/bash

for dotfile in $(ls dotfiles);
do
  cp dotfiles/$dotfile ~/.$dotfile
  echo 'set ~/.'${dotfile}
done
