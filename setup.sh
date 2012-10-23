#!/bin/bash

# get location of this file.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f ~/.bash_aliases ]; then
  rm -f ~/.bash_aliases
fi
ln -s $DIR/bash_aliases.sh ~/.bash_aliases

if [ -f ~/.vimrc ]; then
  rm -f ~/.vimrc
fi
ln -s $DIR/vimrc ~/.vimrc

if [ ! -d jellybeans.vim ]; then
  git clone https://github.com/lkristjansen/jellybeans.vim.git
fi
mkdir -p ~/.vim
cp -r $DIR/jellybeans.vim/colors ~/.vim

