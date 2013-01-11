Overview
========
So I picked up the vim stuff from https://github.com/nvie/vimrc and made
some local modifications for myself.

Quick installation
==================
Simply run this script to install and configure this vimrc in your `$HOME`
dir::

	wget -O - https://github.com/aaronott/dotfiles/raw/master/autoinstall.sh | sh

Installing this vimrc manually
==============================
Although a vimrc is a very personal thing, you may use mine if you
like it.  To do so, please do the following:

1. Clone this repo::

   	git clone git://github.com/aaronott/dotfiles.git

   or download the plain source only::

   	wget -qO - http://github.com/aaronott/dotfiles/tarball/master | tar -xzvf -

2. In your ~/.vimrc, add the following line::

   	source ~/path/to/vimrc/vimrc

3. Fetch submodules::

   	git submodule init
   	git submodule update

4. Touch::

   	touch ~/.vim/user.vim
   	touch ~/dotfiles/bash/bash_personal_aliases
   	ln -s ~/dotfiles/bash/bash_personal_aliases ~/.bash_personal_aliases

5. Personalize::
   Put your personal aliases in the ~/.bash_personal_aliases
That's it.
