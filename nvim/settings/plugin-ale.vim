let g:ale_linters = { 'javascript': ['eslint'] }
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {
\   'javascript': ['prettier','eslint'],
\   'scss': ['stylelint'],
\   'less': ['stylelint'],
\   'css': ['stylelint'],
\   'php': ['phpcbf'],
\   'xml': ['xmllint']
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
let g:ale_fix_on_save = 1
