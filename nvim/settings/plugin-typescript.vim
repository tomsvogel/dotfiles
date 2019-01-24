function! VimTSCConfig()
    let g:nvim_typescript#javascript_support=0
    let g:nvim_typescript#vue_support=1
    let g:nvim_typescript#completion_mark=1
    let g:nvim_typescript#type_info_on_hold=1
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript

    no <Leader>tD   :TSDoc<cr>
    no <Leader>tt   :TSType<cr>
    no <Leader>ttd   :TSTypeDef<cr>
    no <Leader>td   :mark 1<cr>:TSDef<cr>
    no <Leader>tpd  :TSDefPreview<cr>
    no <Leader>tr   :TSRefs<cr>
    no <Leader>tR   :TSRename<cr>
endfunction
call VimTSCConfig()
call ncm2#nvim_typescript#init()
