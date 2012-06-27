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

Manipulating
============

To update (get lates changes from github.com to local machine):
	
	git pull

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

    git fetch upstream
    git merge upstream/master

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


