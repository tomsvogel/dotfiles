" #PLUGINS {{{
call plug#begin('~/.local/share/nvim/plugged')

" Linting and Code Formatting
" Plug 'w0rp/ale'

" Markdown
Plug 'reedes/vim-pencil'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'nelstrom/vim-markdown-folding'
" php
Plug 'stephpy/vim-php-cs-fixer'
Plug 'evidens/vim-twig'
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

" File explorer
Plug 'scrooloose/nerdtree'

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'rhysd/git-messenger.vim'

" Fuzzy Search
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

" Syntax Highlighting And Indentation For 100+ Languages
Plug 'sheerun/vim-polyglot'
" Plug 'yuezk/vim-js'
" Plug 'HerringtonDarkholme/yats.vim'

" Plug 'maxmellon/vim-jsx-pretty'
" Appearance and Themes
Plug 'gruvbox-community/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'itchyny/lightline.vim'
Plug 'kaicataldo/material.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Autocompletion & Intellisense
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'SirVer/ultisnips'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Utilities
Plug 'airblade/vim-rooter'
Plug 'moll/vim-bbye'
" Plug 'mattn/emmet-vim'
Plug 'miyakogi/conoline.vim'
Plug 'ervandew/supertab'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-obsession'
Plug 'gcmt/taboo.vim'
Plug 'luochen1990/rainbow'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'TaDaa/vimade'
Plug 'eugen0329/vim-esearch'
" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'

call plug#end()
"}}}
