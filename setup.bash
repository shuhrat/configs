#!/bin/bash

if [ -f ~/.profile ]; then
    mv ~/.profile ~/.profile_old
fi

if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig_old
fi

ln -s ~/configs/.profile ~/.profile
ln -s ~/configs/.gitconfig ~/.gitconfig
ln -s ~/configs/.vimrc ~/.vimrc
ln -s ~/configs/.vim ~/.vim