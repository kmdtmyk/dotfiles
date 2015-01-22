#!/bin/sh

if [ ! -e ~/.vim ]; then
  mkdir ~/.vim
fi

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
ln -sf ~/dotfiles/.vim/colors ~/.vim
ln -sf ~/dotfiles/.vim/indent ~/.vim
