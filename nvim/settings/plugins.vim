call plug#begin('~/.config/nvim/plugged')
" Colorscheme {{{
Plug 'fenetikm/falcon'
" }}}
" Fuzzy search {{{
Plug 'junegunn/fzf.vim'
" }}}
" File manipulation {{{
" Plug 'tpope/vim-eunuch'
Plug 'justinmk/vim-dirvish'
" }}}
" Text manipulation {{{
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
" }}}
"
" LSP and completion {{{
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}} 

" Languages {{{
Plug 'cakebaker/scss-syntax.vim' " scss
Plug 'elzr/vim-json' " json
Plug 'hail2u/vim-css3-syntax' " css
" Plug 'leafgarland/typescript-vim' " typescript
Plug 'leafgarland/typescript-vim'
Plug 'lervag/vimtex' " latex
Plug 'mxw/vim-jsx' " jsx
Plug 'othree/html5.vim' " html
Plug 'pangloss/vim-javascript' " javascript
Plug 'stephpy/vim-yaml' " yaml
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tidalcycles/vim-tidal' " tidalcycles
Plug 'plasticboy/vim-markdown'

" }}}
" Utils {{{
Plug 'airblade/vim-gitgutter' " show git changes in gutter
Plug 'christoomey/vim-tmux-navigator' " common mapping for changing vim and tmux splits
Plug 'hauleth/asyncdo.vim' " run commands asynchronously
Plug 'igemnace/vim-makery' " easy makeprg definitions for projects
Plug 'junegunn/vim-peekaboo' " show registers content when pasting or copying from one
Plug 'machakann/vim-highlightedyank' " highlight yanked text
Plug 'mhinz/vim-startify' " start screen
Plug 'qpkorr/vim-bufkill' " close buffers with BD without closing window
Plug 'romainl/vim-cool' " hide search highlight when not searching
Plug 'romainl/vim-qf' " quicklist enhancements
Plug 'romainl/vim-qlist' " show include-search and definition-search results in quicklist
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'xtal8/traces.vim' " highlight patterns and ranges
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'w0rp/ale'

" }}}
call plug#end()
