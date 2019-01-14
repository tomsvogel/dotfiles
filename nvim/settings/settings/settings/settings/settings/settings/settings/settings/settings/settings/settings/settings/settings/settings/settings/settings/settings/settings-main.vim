" ================ Main Settings ======================

" Mapleader is comma instead of backslash

" Use an undo file
set undofile
" Set a directory to store the undo history
set undodir=~/.vimundo/

" Terminal emulation bindings
tnoremap <Esc> <C-\><C-n>
noremap <leader>t :term zsh<CR>

" Syntax sync
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
autocmd BufEnter * :syntax sync fromstart

"enable to collapse json
:set filetype=json
:syntax on
:set fdm=syntax

set nogdefault
