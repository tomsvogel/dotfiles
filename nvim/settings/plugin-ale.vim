let g:ale_linter_aliases = {'jsx': ['css', 'javascript'], 'tsx': ['css','typescript']}

let g:ale_linters = { 
\ 'css':['stylelint'],
\ 'javascript': ['eslint'],
\ 'jsx': ['eslint','stylelint'], 
\ 'tsx': ['eslint','stylelint'], 
\ 'php': ['phpcs']
\}

" \ 'typescript': ['eslint'], 

let g:airline#extensions#ale#enabled = 1


let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --print-width 120 --tab-width 2 --jsx-bracket-same-line --no-bracket-spacing'

let g:ale_fixers = {
\   'javascript': ['prettier','eslint'],
\   'typescript': ['prettier','eslint'],
\   'yaml': ['prettier'], 
\   'json': ['prettier'], 
\   'scss': ['prettier','stylelint'],
\   'less': ['prettier','stylelint'],
\   'sh': ['shfmt'],
\   'css': ['prettier','stylelint'],
\   'php': ['phpcbf'],
\   'xml': ['xmllint']
\}
let g:ale_completion_enabled = 1

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
nmap <silent> <leader>n :ALENext<cr>
nmap <silent> <leader>m :ALEPrevious<cr>
highlight ALEWarning ctermbg=Black
