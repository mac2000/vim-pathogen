Installation
============

On Unix:

	cd ~
	git clone https://github.com/mac2000/vim-pathogen.git .vim
	ln -s .vim/.vimrc .vimrc

On Windows:

	cd %HOMEPATH%
	git clone https:github.com/mac2000/vim-pathogen.git vimfiles
	mklink _vimrc vimfiles\.vimrc

Run Vin in sinlge mode, add to `~/.bashrc`

    g() { command gvim --remote-silent $@ || command gvim $@; }
    vim() { command gvim --remote-silent $@ || command gvim $@; }
    gvim() { command gvim --remote-silent $@ || command gvim $@; }

Manipulating
============

To update (get lates changes from github.com to local machine):
	
	git pull && git submodule update --init

To save local changes to github:

	git commit -am 'Commit message'
	git push


Managing your vim via git
=========================

First of all you need to [fork](https://help.github.com/articles/fork-a-repo) [vim-pathogen](https://github.com/tpope/vim-pathogen).

According to manual my steps was something like this:

    cd %HOMEPATH%\Dropbox\Projects
    git clone https://github.com/mac2000/vim-pathogen.git
    cd vim-pathogen
    git remote add upstream https://github.com/tpope/vim-pathogen.git

When vim-pathogen updated, just run folowing commands:

	git pull upstream master

Adding plugins

	git submodule add https://github.com/vim-scripts/Color-Sampler-Pack.git bundle/Color-Sampler-Pack
	git add .
	git commit -am 'Color Sampler Pack plugin addded'
	git push

On another machine

	git pull
	git submodule update --init
	
To commit your changes use folowing commands:

    git commit -am 'Commit message'
    git push

Forking plugins
===============

Fork repository and add it as submodule

	git submodule add https://github.com/mac2000/snipmate.vim bundle/snipmate
    	cd bundle/snipmate
    	git remote add upstream https://github.com/msanders/snipmate.vim.git
	git commit -am 'SnipMate added'
	git push

Now to update from original repository:

	cd bundle/snipmate
	git pull upstream master
	
To save changes:

	cd bundle/snipmate
	git commit -am 'Commit message'
	git push
