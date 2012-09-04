# Shane A. Stillwell Vim setup

Inspired by http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

## Installing Vim on another machine

    cd ~
    git clone http://github.com/shanestillwell/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    cd ~/.vim
    git submodule init
    git submodule update


## Upgrading a plugin bundle

    cd ~/.vim/bundle/nerdtree
    git pull origin master

## Upgrading all bundles
 
    git submodule foreach git pull origin master


