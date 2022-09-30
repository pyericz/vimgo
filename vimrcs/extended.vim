"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
    let g:os = "Windows"
  else
    let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif

if g:os == "Darwin"
  set gfn=Source\ Code\ Pro\ for\ Powerline:h12,Hack:h12,Source\ Code\ Pro:h12,Menlo:h12
elseif g:os == "Windows"
  set gfn=Source\ Code\ Pro\ for\ Powerline:h12,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif g:os == "Linux"
  set gfn=Source\ Code\ Pro\ for\ Powerline\ 11,:Hack\ 12,Source\ Code\ Pro\ 11,Bitstream\ Vera\ Sans\ Mono\ 11
endif

" hide ~ symbol at the end of buffer
hi EndOfBuffer guifg=bg

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif
