" Starting from https://github.com/skwp/dotfiles/blob/master/vimrc and
" Tim Pope Vim Sensible https://github.com/tpope/vim-sensible the new
" setting file is more readable and more usable.
let mapleader=","

call plug#begin('~/.config/nvim/plugged')

" Languages and libraries
Plug 'JulesWang/css.vim'
Plug 'genoma/vim-less'
Plug 'othree/html5.vim'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Plug 'ternjs/tern_for_vim',{ 'for': ['javascript', 'javascript.jsx'] }
" Plug 'ervandew/supertab'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
" Plug 'tpope/vim-haml'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
Plug 'stephpy/vim-php-cs-fixer'
Plug 'mustache/vim-mustache-handlebars'
Plug 'evidens/vim-twig'
Plug 'Galooshi/vim-import-js'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'hail2u/vim-css3-syntax'
" Utilities
" Plug 'Lokaltog/vim-easymotion'
" Plug 'mhinz/vim-signify'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
" Plug 'icymind/NeoSolarized'
" Plug 'Chiel92/vim-autoformat'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'brooth/far.vim'
" Plug 'sbdchd/neoformat'
Plug 'Shougo/neocomplcache'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
" Plug 'tpope/vim-fugitive'
Plug 'eugen0329/vim-esearch'
" Plug 'saltstack/salt-vim'
Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
" Plug 'honza/vim-snippets'
" Plug 'Raimondi/delimitMate'
Plug 'jiangmiao/auto-pairs'
Plug 'othree/xml.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" Autocompletion

" Deoplete addons
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
" Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'phpactor/ncm2-phpactor'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-ultisnips'
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }
Plug 'Shougo/context_filetype.vim'
Plug 'alvan/vim-closetag'
" Linters
Plug 'w0rp/ale'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Sensible settings
Plug 'rstacruz/vim-opinion'
Plug 'rakr/vim-one'
" color 
call plug#end()

" ========================================

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

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
if has('mac')       " osx
  set clipboard=unnamed
  let g:python3_host_prog = '/Users/toms/.pyenv/shims/python'
else                " linux, bsd, etc
  set clipboard=unnamedplus
  " let g:python3_host_prog = '/home/toms/.pyenv/shims/python'
endif

set nocompatible                  " Must come first because it changes other options.

" filetype plugin indent on         " Turn on file type detection.
" syntax enable                     " Turn on syntax highlighting.
" set foldmethod=syntax
" set autoread

" let g:python_host_skip_check = 1
" let g:python3_host_skip_check = 1

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>:
set ttyfast
set lazyredraw

set colorcolumn=80
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
set conceallevel=1



set foldcolumn=0
set signcolumn=no
