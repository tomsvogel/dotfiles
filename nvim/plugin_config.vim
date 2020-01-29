" GRUVBOX {{{
" set background=dark
" let g:gruvbox_sign_column = 'bg0'
" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_italic = 1
" let g:gruvbox_invert_selection = 0
" let g:gruvbox_plugin_hi_groups =1
" let g:lightline = { 'colorscheme': 'gruvbox' }
" colorscheme gruvbox
" }}}


syntax enable
syntax on

 " #THEME {{{
" let g:airline_theme='oceanicnext'
"  let g:oceanic_next_terminal_bold = 1
"  let g:oceanic_next_terminal_italic = 1
"  colorscheme OceanicNext
"  let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
 " let g:material_theme_style = 'dark'
"if you use airline / lightline
" let g:lightline = { 'colorscheme': 'material_vim' }
" colorscheme material
" colorscheme onehalflight
colorscheme onehalfdark
let g:lightline = { 'colorscheme' : 'onehalfdark' }
" }}}

" #SUPERTAB {{{
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabClosePreviewOnPopupClose = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<C-x><C-o>"
" }}}

" #Lightline {{{
" Integrate Coc with Lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction'
      \ },
      \ }
" }}}

" #EMMET {{{
" let g:user_emmet_expandabbr_key='<C-@>'
" imap <expr> <C-Space> emmet#expandAbbrIntelligent("\<tab>")
" let g:user_emmet_settings = {
  " \  'javascript.jsx' : {
  "   \      'extends' : 'jsx',
    " \  },
  " \}
"}}}

" #COC {{{
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gr <Plug>(coc-references)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>go :CocCommand tsserver.organizeImports<CR>
nmap <silent>ff :CocCommand prettier.formatFile<CR>

nnoremap <silent> <Leader>K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" }}}

" #MARKDOWN {{{
let g:pencil#textwidth = 80
let g:vim_markdown_folding_disabled = 1
au BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/
let g:markdown_fenced_languages = ['rust', 'css', 'yaml', 'javascript', 'html', 'vim','json']
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init({'wrap': 'soft'})
augroup END
nmap <C-m> <Plug>MarkdownPreviewToggle
"}}}

" #ALE {{{
" let g:ale_fixers = {}
" let g:ale_fixers['javascript'] = ['eslint']
" let g:ale_fixers['typescript'] = ['eslint']
" let g:ale_fixers['json'] = ['prettier']
" let g:ale_fixers['scss'] = ['stylelint']
" let g:ale_fixers['rust'] = ['rustfmt']
" let g:ale_fix_on_save = 1 " Fix files automatically on save
" let g:ale_pattern_options = {
" \ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
" \ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
" \}

  "diagnostic.errorSign": "•",
  "diagnostic.warningSign": "•",
  "diagnostic.infoSign": "•",
" let g:ale_sign_error = '•'
" let g:ale_sign_warning = '•'
"Move between linting errors
" nmap <silent> [c <Plug>(ale_previous_wrap)
" nmap <silent> ]c <Plug>(ale_next_wrap)
" nmap <silent> <leader>n :ALENext<cr>
" nmap <silent> <leader>m :ALEPrevious<cr>

nmap <silent> <leader>n <Plug>(coc-diagnostic-next)
nmap <silent> <leader>m <Plug>(coc-diagnostic-prev)

" nmap <F6> <Plug>(ale_fix)
"}}}

" #ULTILSNIPS {{{
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.dotfiles/nvim/snips"
let g:UltiSnipsSnippetDirectories=["UtilSnips", "snips"]
"}}}

" #NETRW {{{
" Set preferred view
" let g:netrw_liststyle = 3
" Remove banner
" let g:netrw_banner = 0
" }}}

" #FZF {{{
let g:fzf_command_prefix = 'Fzf'
nnoremap <C-e> :FzfBuffers<CR>
nnoremap <Leader>b :FzfBuffers<CR>
" nnoremap <Leader>e :FzfHistory<CR>
nnoremap <Leader>t :FzfBTags<CR>
nnoremap <C-t> :FzfTags<CR>
" nnoremap <C-p> :FzfFiles<CR>
" Have FZF list all tracked files plus untracked files minus your ignored files
nnoremap <C-p> :FzfGitFiles --exclude-standard --others --cached<CR>
nnoremap <Leader>gt :FzfRg<CR>
" }}}

" #RIPGREP {{{
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
" }}}

" #CONOLINE {{{
" Highlight the line of the cursor
let g:conoline_auto_enable = 1
let g:conoline_use_colorscheme_default_insert=1
" }}}

" #VIM GO {{{
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_types = 1

" Automatically import packages on save
" let g:go_fmt_command = "goimports"

" Prevent errors from opening the location list
" let g:go_fmt_fail_silently = 1

" Search and easily navigate between the function and type definitions within
" the package
" au FileType go nmap <leader>d :GoDeclsDir<cr>

" Go to definition
" au FileType go nmap <F5> <Plug>(go-def)

" Go Fmt
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
" }}}

" #GUTENTAGS {{{
"let g:gutentags_file_list_command = "rg --files --follow --ignore-file '/home/ayo/.vimignore'"
" }}}

" #SIGNIFY {{{
" Check for only Git
let g:signify_vcs_list = [ 'git' ]

" Jump to next and previous hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

" Hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
" }}}

" #FUGITIVE {{{
nmap <leader>gw :Gwrite<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gs :Gstatus<CR>
" }}}

" NERDTree settings {{{
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeChDirMode=2
nmap <Leader>1 :NERDTreeFind<CR>
" }}}

" php-cs settings {{{
" If php-cs-fixer is in $PATH, you don't need to define line below
" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar

" If you use php-cs-fixer version 1.x
let g:php_cs_fixer_level = "symfony"                   " options: --level (default:symfony)
let g:php_cs_fixer_config = "default"                  " options: --config
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag" " options: --fixers
"let g:php_cs_fixer_config_file = '.php_cs'            " options: --config-file
" End of php-cs-fixer version 1 config params

" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

" }}}
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.js set filetype=javascript.jsx
augroup END
