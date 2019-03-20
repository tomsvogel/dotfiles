" " ============ DEOPLETE ============
" " " Omnicomplete on CTRL space
" " Since iterm will inevitably send a <Nul> on CTRL-Space (because it's not a
" " GUI app), we need to make sure that those <Nul> will be mapped to <C-Space>
" " instead
" inoremap <C-Space> <C-x><C-o>
" imap <buffer> <Nul> <C-Space>
" smap <buffer> <Nul> <C-Space>
"
" augroup omnifuncs
"   autocmd!
"   autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"   autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"   autocmd FileType javascript,jsx,javascript.jsx setlocal omnifunc=tern#Complete
"   autocmd FileType php setlocal omnifunc=phpactor#Complete
"   autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" augroup end
"
" "  auto-completion by default
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#auto_completion_start_length = 1
"
" " let g:deoplete#omni#functions = {}
" " let g:deoplete#omni#functions.javascript = [
"   " \ 'tern#Complete',
"   " \ 'jspc#omni'
" " \]
"
" " set completeopt=longest,menuone,preview
" " let g:deoplete#sources = {}
" " let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
" " let g:tern#command = ['tern']
" " let g:tern#arguments = ['--persistent']
"
"
"
"
" " autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" " let g:UltiSnipsExpandTrigger="<C-j>"
" let g:SuperTabDefaultCompletionType = "<c-n>"
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " close the preview window when you're not using it
" let g:SuperTabClosePreviewOnPopupClose = 1
" " " or just disable the preview entirely
" " set completeopt-=preview
" "
" " call deoplete#custom#option('num_processes', 1)

autocmd FileType css,sass,scss,js,tsx setlocal omnifunc=csscomplete#CompleteCSS
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"
