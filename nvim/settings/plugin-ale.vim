let g:ale_linters = { 'javascript': ['eslint'] }
let g:airline#extensions#ale#enabled = 1

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --print-width 120 --tab-width 2 --jsx-bracket-same-line --no-bracket-spacing'

let g:ale_fixers = {
\   'javascript': ['prettier','eslint'],
\   'scss': ['stylelint'],
\   'less': ['stylelint'],
\   'css': ['stylelint'],
\   'php': ['phpcbf'],
\   'xml': ['xmllint']
\}
let g:ale_completion_enabled = 1

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1
