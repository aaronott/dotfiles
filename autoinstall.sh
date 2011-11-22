#!/bin/sh
INSTALL_TO=~/Projects

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$INSTALL_TO/dotfiles" ] && die "$INSTALL_TO/dotfiles already exists."
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

cd "$INSTALL_TO"
git clone git://github.com/nvie/vimrc.git
cd vimrc

# Download vim plugin bundles
git submodule init
git submodule update

# Symlink ~/.vim and ~/.vimrc
cd ~
ln -s "$INSTALL_TO/dotfiles/vimrc" .vimrc
ln -s "$INSTALL_TO/dotfiles/vim" .vim
touch ~/.vim/user.vim

ln -s "$INSTALL_TO/dotfiles/bash/bash_aliases" .bash_aliases
ln -s "$INSTALL_TO/dotfiles/bash/bash_drush_aliases" .bash_drush_aliases

touch "$INSTALL_TO/dotfiles/bash/bash_personal_aliases"
ln -s "$INSTALL_TO/dotfiles/bash/bash_personal_aliases" .bash_personal_aliases

echo "Installed and configured .vim, have fun."
