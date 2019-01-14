" ============ NerdTree ============

" NERDTree settings
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeChDirMode=2
nmap <Leader>1 :NERDTreeFind<CR>
