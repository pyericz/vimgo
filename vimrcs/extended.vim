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

if has("mac") || has("macunix")
  set gfn=Source\ Code\ Pro\ for\ Powerline:h12,Hack:h12,Source\ Code\ Pro:h12,Menlo:h12
elseif has("win16") || has("win32")
  set gfn=Source\ Code\ Pro\ for\ Powerline:h12,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
  set gfn=Source\ Code\ Pro\ for\ Powerline\ 12,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
  set gfn=Source\ Code\ Pro\ for\ Powerline\ 12,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
  set gfn=Monospace\ 11
endif

" hide ~ symbol at the end of buffer
hi EndOfBuffer guifg=bg

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif
