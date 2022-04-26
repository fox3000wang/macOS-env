#!/bin/bash -v

is_mac=`uname | grep Darwin`
cwd=`pwd`

cd $cwd

cp $cwd/bashrc $HOME/.bashrc

cp $cwd/profile $HOME/.profile

cp $cwd/gitconfig $HOME/.gitconfig

cp $cwd/tmux.config $HOME/.tmux.conf

cp $cwd/condarc $HOME/.condarc

cp -r $cwd/pip $HOME/.pip

cp $cwd/zshrc $HOME/.zshrc

ln -s $cwd/oh-my-zsh $HOME/.oh-my-zsh

ln -s $cwd/vim $HOME/.vim

ln -s $HOME/.vim/vimrc.improve $HOME/.vimrc


# install personal scripts to $HOME/bin, which is added to $PATH
mkdir -p $HOME/bin
[ -n $is_mac ] && cp $cwd/show-hide-files $HOME/bin/

cd $HOME
# switch shell to zsh
chsh -s /bin/zsh
. $HOME/.zshrc


# install homebrew
#ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
