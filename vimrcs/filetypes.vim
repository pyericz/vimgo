"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType vim setlocal ts=2 sts=2 sw=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => json
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType json syntax match Comment +\/\/.\+$+
