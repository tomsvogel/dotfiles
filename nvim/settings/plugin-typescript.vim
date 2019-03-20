function! VimTSCConfig()
    au BufRead,BufNewFile *.ts   setfiletype typescript
    au BufRead,BufNewFile *.tsx  setfiletype typescript
    let g:nvim_typescript#javascript_support=1
    let g:nvim_typescript#vue_support=1
    let g:nvim_typescript#completion_mark=1
    let g:nvim_typescript#type_info_on_hold=1
    let g:nvim_typescript#max_completion_detail=50
    no <silent>tD   :TSDoc<cr>
    no <silent>tt   :TSType<cr>
    no <silent>ttd  :TSTypeDef<cr>
    no <silent>td   :mark 1<cr>:TSDef<cr>
    no <silent>tpd  :TSDefPreview<cr>
    no <silent>tr   :TSRefs<cr>
    no <silent>tR   :TSRename<cr>
    no <silent>ti   :TSImport<cr>
endfunction
call VimTSCConfig()

" call ncm2#nvim_typescript#init()
