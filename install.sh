#!/bin/bash -v

is_mac=`uname | grep Darwin`
cwd=`pwd`

# clone some git repositories to $HOME
cd $HOME

git clone git@github.com:fox3000wang/vimfiles.git .vim
ln -sf $HOME/.vim/vimrc.improve $HOME/.vimrc

cd $cwd
cp $cwd/bashrc $HOME/.bashrc

cp $cwd/profile $HOME/.profile

cp $cwd/gitconfig $HOME/.gitconfig

cp $cwd/tmux.config $HOME/.tmux.conf

cp $cwd/zshrc $HOME/.zshrc

cp $cwd/condarc $HOME/.condarc

cp -r $cwd/oh-my-zsh $HOME/.oh-my-zsh

# install personal scripts to $HOME/bin, which is added to $PATH
mkdir -p $HOME/bin
[ -n $is_mac ] && cp $cwd/show-hide-files $HOME/bin/

cd $HOME
# switch shell to zsh
chsh -s /bin/zsh
. $HOME/.zshrc

# install homebrew
#ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
