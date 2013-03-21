#!bash

if [ -f ~/.profile ]; then
    mv ~/.profile ~/.profile_old
fi

if [ -f ~/.gitconfig ]; then
    mv ~/.gitconfig ~/.gitconfig_old
fi

ln -s .profile ~/.profile
ln -s .gitconfig ~/.gitconfig
ln -s .vimrc ~/.vimrc
ln -s .vim ~/.vim