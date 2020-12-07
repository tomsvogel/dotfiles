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
Plug 'junegunn/gv.vim'
Plug 'AndrewRadev/linediff.vim'

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
" Plug 'gruvbox-community/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'itchyny/lightline.vim'
" Plug 'kaicataldo/material.vim'
Plug 'hzchirs/vim-material'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'KeitaNakamura/neodark.vim'
" Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Plug 'dracula/vim', {'as':'dracula'}
Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'bluz71/vim-nightfly-guicolors'

" Autocompletion & Intellisense
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc.nvim'
Plug 'SirVer/ultisnips'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'hail2u/vim-css3-syntax'
" Utilities
Plug 'airblade/vim-rooter'
Plug 'moll/vim-bbye'
Plug 'lilydjwg/colorizer'
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
Plug 'brooth/far.vim'
" Syntax highlighting for nginx
Plug 'chr4/nginx.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Plug 'kamykn/spelunker.vim'

Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}

call plug#end()
"}}}
