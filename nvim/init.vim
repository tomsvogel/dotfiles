" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.
let mapleader=","

call plug#begin('~/.config/nvim/plugged')

" Languages and libraries
Plug 'JulesWang/css.vim'
Plug 'genoma/vim-less'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ternjs/tern_for_vim',{ 'for': ['javascript', 'javascript.jsx'] }
Plug 'ervandew/supertab'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-haml'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'stephpy/vim-php-cs-fixer'
Plug 'mustache/vim-mustache-handlebars'
Plug 'evidens/vim-twig'
Plug 'Galooshi/vim-import-js'

" Utilities
" Plug 'Lokaltog/vim-easymotion'
" Plug 'mhinz/vim-signify'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'icymind/NeoSolarized'
Plug 'Chiel92/vim-autoformat'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'brooth/far.vim'
" Plug 'sbdchd/neoformat'
Plug 'Shougo/neocomplcache'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'eugen0329/vim-esearch'
Plug 'saltstack/salt-vim'
Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'fatih/vim-go'
" Plug 'jodosha/vim-godebug'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'jiangmiao/auto-pairs'
Plug 'Raimondi/delimitMate'
" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'kristijanhusak/deoplete-phpactor'
" Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/nvim-cm-tern', {'do': 'npm install'}
" Plug 'roxma/ncm-phpactor'
" Deoplete addons
Plug 'Shougo/context_filetype.vim'
" Plug 'Shougo/neoinclude.vim'

" Linters
" Plug 'neomake/neomake'
Plug 'w0rp/ale'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'benjie/neomake-local-eslint.vim'
" Sensible settings
Plug 'rstacruz/vim-opinion'

" color 
Plug 'rafi/awesome-vim-colorschemes'
" Plug 'joonty/vdebug'
call plug#end()

" ========================================

" Prepare sensible/opinion overrides
" runtime! plugin/sensible.vim
runtime! plugin/opinion.vim 

for fpath in split(globpath('~/.config/nvim/settings/overrides', '*.vim'), '\n')
  exe 'source' fpath
endfor

" =============== Personalized Settings =============
for fpath in split(globpath('~/.config/nvim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
 set clipboard=unnamed
"set clipboard=unnamedplus

set nocompatible                  " Must come first because it changes other options.

filetype plugin indent on         " Turn on file type detection.
syntax enable                     " Turn on syntax highlighting.
set foldmethod=syntax
set autoread

" let g:python_host_skip_check = 1
let g:python3_host_skip_check = 1
let g:python_host_prog  = '/Library/Frameworks/Python.framework/Versions/2.7/bin/python'
let g:python3_host_prog = 'python'


map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
