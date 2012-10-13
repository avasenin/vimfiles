## vimfile

This is my ~/.vim directory and I use this setting to work with my Ruby on Rails and Clojure projects. I used akitaonrails/vimfiles bundle many years but now it looks very cumbersome

## Installation

Clone this repo
`git clone https://github.com/avasenin/vimfiles.git ~/.vim`

Then ‘cd’ into the repo and run this to get the vundle submodule:

`git submodule update --init`

Make sure vim finds the vimrc file by either symlinking it:
`ln -s ~/.vim/vimrc ~/.vimrc`

or by sourcing it from  your own ~/.vimrc:
`source ~/.vim/vimrc`

Launch `vim`, run `:BundleInstall` 

You need to set up nailgun and provide the correct url to nailgan client in vimrc file. See the vimrc file for more details

## Bundles

* [figitive](http://github.com/tpope/vim-fugitive) - support for Git
* [vim-rails](http://github.com/tpope/vim-rails) - support for Rails
* [VimClojure](vim-scripts) - support for Clojure 
* [ctrlp](http://github.com/kien/ctrlp.vim) - Fuzzy file finder
* [vim-snipmate](http://github.com/garbas/vim-snipmate) - TextMate snippets for Vim
* [snipmate-snippets](http://github.com/hoza/snipmate-snippets) - collection of snippets for vim-snipmate plagin
* [supertab](http://github.com/ervandew/supertab) - Tab auto-completion
* [nerdtree](http://github.com/scrooloose/nerdtree) - File tree inside vim

