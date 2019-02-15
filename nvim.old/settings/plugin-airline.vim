" ============ Airline ============

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 0 
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'



:nmap ä :bnext<CR>
:nmap ö :bprev<CR>
:nmap # :bdelete<CR>
