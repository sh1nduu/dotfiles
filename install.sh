#!/bin/bash

for dotfile in $(ls dotfiles);
do
  if [ -L $HOME/.$dotfile ]
  then
    rm $HOME/.$dotfile
  else
    if [ ! -d backups ]
    then
      mkdir backups
    fi
    mv $HOME/.$dotfile backups/$dotfile
  fi
  ln -s $PWD/dotfiles/$dotfile $HOME/.$dotfile
  echo 'set '${HOME}'/.'${dotfile}
done
