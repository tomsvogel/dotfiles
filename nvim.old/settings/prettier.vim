" let g:neoformat_try_formatprg = 1
"
" function! neoformat#formatters#javascript#prettiereslint() abort
"     return {
"         \ 'exe': 'prettier-eslint',
"         \ 'args': ['--stdin','--stdin-filepath', '%:p', '--print-width 120', '--single-quote', '--no-bracket-spacing','--jsx-bracket-same-line','--trailing-comma es5'],
"         \ 'stdin': 1,
"         \ }
" endfunction
"
" function! neoformat#formatters#javascript#prettier() abort
"     return {
"         \ 'exe': 'prettier',
"         \ 'args': ['--stdin','--stdin-filepath', '%:p', '--print-width 120', '--single-quote', '--no-bracket-spacing','--jsx-bracket-same-line','--trailing-comma es5'],
"         \ 'stdin': 1,
"         \ }
" endfunction
"
" let g:neoformat_enabled_javascript = ['prettiereslint', 'prettier']
"
" let g:neoformat_enabled_html = ['html-beautify']
" " augroup fmt
" "   autocmd!
" "   autocmd BufWritePre * undojoin | Neoformat
" " augroup END
" "
" " let g:neoformat_verbose = 1
"
" nmap <Leader>tt :Neoformat<CR>

" let g:prettier#exec_cmd_async = 1
"
" " max line lengh that prettier will wrap on
" g:prettier#config#print_width = 120
"
" " number of spaces per indentation level
" g:prettier#config#tab_width = 2
"
" " use tabs over spaces
" g:prettier#config#use_tabs = 'false'
"
" " print semicolons
" g:prettier#config#semi = 'true'
"
" " single quotes over double quotes
" g:prettier#config#single_quote = 'true' 
"
" " print spaces between brackets
" g:prettier#config#bracket_spacing = 'false' 
"
" " put > on the last line instead of new line
" g:prettier#config#jsx_bracket_same_line = 'true' 
"
" " none|es5|all
" g:prettier#config#trailing_comma = 'all'
"
" " flow|babylon|typescript|postcss
" g:prettier#config#parser = 'flow'
