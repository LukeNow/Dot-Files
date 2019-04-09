#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/w0rp/ale.git ~/.vim/bundle
git clone https://github.com/rafi/awesome-vim-colorschemes.git ~/.vim/bundle
git clone https://github.com/lilydjwg/colorizer.git ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle
git clone https://github.com/itchyny/lightline.vim.git ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle
git clone https://github.com/kana/vim-submode.git ~/.vim/bundle

cp .my_aliases ~/.my_aliases 
cp .vimrc ~/.vimrc

