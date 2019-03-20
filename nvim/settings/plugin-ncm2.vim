autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
let g:ncm2#complete_length= [[1,1],[7,2]]
let g:ncm2#auto_popup = 1
imap <C-Space> <Plug>(ncm2_manual_trigger)

call ncm2#register_source({'name' : 'css',
            \ 'priority': 9, 
            \ 'subscope_enable': 1,
            \ 'scope': ['css', 'scss', 'less','javascript','javascript.jsx','typescript'],
            \ 'mark': 'css',
            \ 'word_pattern': '[\w\-]+',
            \ 'complete_pattern': ':\s*',
            \ 'on_complete': ['ncm2#on_complete#omni',
            \               'csscomplete#CompleteCSS'],
            \ })

" let g:LanguageClient_serverCommands = {
"   \ 'typescript': ['javascript-typescript-stdio'],
"   \ 'javascript': ['javascript-typescript-stdio']
"   \ }
" let g:LanguageClient_serverCommands = {
"       \ 'typescript': ['~/.npm-global/bin/javascript-typescript-stdio'],
"       \ 'typescript.tsx': ['~/.npm-global/bin/javascript-typescript-stdio'],
"       \}
" let g:LanguageClient_serverCommands = {
"  \ 'javascript': ['javascript-typescript-stdio'],
"  \ 'javascript.jsx': ['javascript-typescript-stdio'],
"  \ 'typescript': ['javascript-typescript-stdio'],
"  \ 'typescript.jsx': ['javascript-typescript-stdio']
"  \ }
" let g:LanguageClient_autoStart = 1
" set completefunc=LanguageClient#complete
" set formatexpr=LanguageClient_textDocument_rangeFormatting()
" nnoremap <silent>th :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent>tr :call LanguageClient#textDocument_references()<CR>
" nnoremap <silent>td :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent>tn :call LanguageClient#textDocument_rename()<CR>
" enable ncm2 for all buffers
" IMPORTANTE: :help Ncm2PopupOpen for more information
