if exists('g:loaded_skkeleton') && g:loaded_skkeleton
  finish
endif
let g:loaded_skkeleton = v:true

noremap! <expr> <Plug>(skkeleton-enable) skkeleton#enable()
autocmd User DenopsPluginPost:skkeleton let g:skkeleton#init = v:true

" Cause unexpected behavior when lmap is empty
" (enable action was failed)
" so makes dummy mapping
lnoremap <Plug>(skkeleton-dummy) :
