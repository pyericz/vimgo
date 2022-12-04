"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

let g:ale_linters = {
\   'javascript': ['standard'],
\   'cpp': ['clang-format'],
\   'c': ['clang-format'],
\   'cuda': ['clang-format'],
\   'rust': ['analyzer', 'cargo']
\}
let g:ale_fixers = {
\   'javascript': ['standard'],
\   'cpp': ['clang-format'],
\   'c': ['clang-format'],
\   'cuda': ['clang-format'],
\   'rust': ['rustfmt']
\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType vim setlocal ts=2 sts=2 sw=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => json
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType json syntax match Comment +\/\/.\+$+
