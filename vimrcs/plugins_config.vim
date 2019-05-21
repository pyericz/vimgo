""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/bundle/{}')
call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
call pathogen#helptags()


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'

""""""""""""""""""""""""""""""
" => CtrlP
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" map <leader>j :CtrlP<cr>
" map <c-b> :CtrlPBuffer<cr>
" map <leader>d :CtrlPBufTag<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
let g:ctrlp_buftag_types = {
\ 'go'         : '--language-force=go --golang-types=ftv',
\ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
\ 'markdown'   : '--language-force=markdown --markdown-types=hik',
\ 'objc'       : '--language-force=objc --objc-types=mpci',
\ 'rc'         : '--language-force=rust --rust-types=fTm',
\ 'javascript' : '--language-force=javascript --javascript-types=cfmpv'
\ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.swp', 'node_modules']
let g:NERDTreeWinSize=35
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeHijackNetrw = 0




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:multi_cursor_use_default_mapping=0
"
" " Default mapping
" let g:multi_cursor_start_word_key      = '<C-s>'
" let g:multi_cursor_select_all_word_key = '<A-s>'
" let g:multi_cursor_start_key           = 'g<C-s>'
" let g:multi_cursor_select_all_key      = 'g<A-s>'
" let g:multi_cursor_next_key            = '<C-s>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '~20%' }
" let g:fzf_layout = { 'window': 'botright new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { "fg":      ["fg", "Normal"],
  \ "bg":      ["bg", "Normal"],
  \ "hl":      ["fg", "IncSearch"],
  \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
  \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
  \ "hl+":     ["fg", "IncSearch"],
  \ "info":    ["fg", "IncSearch"],
  \ "border":  ["fg", "Ignore"],
  \ "prompt":  ["fg", "Comment"],
  \ "pointer": ["fg", "IncSearch"],
  \ "marker":  ["fg", "IncSearch"],
  \ "spinner": ["fg", "IncSearch"],
  \ "header":  ["fg", "WildMenu"] }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:filter_header(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
    \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction



let g:ascii0 = [
      \"                  ,",
      \"                 / \\,,_  .'|",
      \"              ,{{| /}}}}/_.'",
      \"             }}}}` '{{'  '.",
      \"           {{{{{    _   ;, \\ ",
      \"        ,}}}}}}    /o`\\  ` ;)",
      \"       {{{{{{   /           (",
      \"       }}}}}}   |            \\ ",
      \"      {{{{{{{{   \\            \\ ",
      \"      }}}}}}}}}   '.__      _  | ",
      \"      {{{{{{{{       /`._  (_\\ / ",
      \"       }}}}}}'      |    //___/   ",
      \"       {{{{{'       |     '--'        ",
      \"        }}}'                         ",
      \"     "
      \]

let g:ascii1 = [
      \"   ",
      \"   ",
      \"                                                               iiii                          ",
      \"                                                              i::::i                         ",
      \'                ,",                                            iiii                          ',
      \"               / \\,,_  .'|                                                                  ",
      \"            ,{{| /}}}}/_.'          vvvvvvv           vvvvvvviiiiiii    mmmmmmm    mmmmmmm   ",
      \"           }}}}` '{{'  '.            v:::::v         v:::::v i:::::i  mm:::::::m  m:::::::mm ",
      \"         {{{{{    _   ;, \\            v:::::v       v:::::v   i::::i m::::::::::mm::::::::::m",
      \"      ,}}}}}}    /o`\\  ` ;)            v:::::v     v:::::v    i::::i m::::::::::::::::::::::m",
      \"     {{{{{{   /           (             v:::::v   v:::::v     i::::i m:::::mmm::::::mmm:::::m",
      \"     }}}}}}   |            \\             v:::::v v:::::v      i::::i m::::m   m::::m   m::::m",
      \"    {{{{{{{{   \\            \\             v:::::v:::::v       i::::i m::::m   m::::m   m::::m",
      \"    }}}}}}}}}   '.__      _  |             v:::::::::v        i::::i m::::m   m::::m   m::::m",
      \"    {{{{{{{{       /`._  (_\\ /              v:::::::v        i::::::im::::m   m::::m   m::::m",
      \"     }}}}}}'      |    //___/                v:::::v         i::::::im::::m   m::::m   m::::m",
      \"     {{{{{'       |     '--'                  v:::v          i::::::im::::m   m::::m   m::::m",
      \"      }}}'                                     vvv           iiiiiiiimmmmmm   mmmmmm   mmmmmm",
      \"   ",
      \"   ",
      \"   ",
      \]

let g:ascii1 = [
      \"                                       ",
      \"                                       ",
      \"██╗  ██╗███████╗██╗   ██╗██╗███╗   ███╗",
      \"██║  ██║██╔════╝██║   ██║██║████╗ ████║",
      \"███████║█████╗  ██║   ██║██║██╔████╔██║",
      \"██╔══██║██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║",
      \"██║  ██║███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║",
      \"╚═╝  ╚═╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      \"                                       ",
      \"                                       ",
      \"                                       ",
      \]

let g:ascii1 = [
      \"                                       ",
      \"                                       ",
      \"██╗  ██╗ █████╗ ██╗   ██╗██╗███╗   ███╗",
      \"██║  ██║██╔══██╗██║   ██║██║████╗ ████║",
      \"███████║███████║██║   ██║██║██╔████╔██║",
      \"██╔══██║██╔══██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      \"██║  ██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║",
      \"╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
      \"                                       ",
      \"                                       ",
      \"                                       ",
      \]
if &columns >= 100
  let g:startify_custom_header = s:filter_header(map(g:ascii1, "\"   \".v:val"))
  let g:startify_padding_left = &columns / 2 - 45
else
  let g:startify_custom_header = s:filter_header(map(g:ascii0, "\"   \".v:val"))
endif

highlight StartifyHeader  ctermfg=114 guifg=#569CD6

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => indentLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ignore startify
let g:indentLine_fileTypeExclude = ['startify']
let g:indentLine_setColors = 1
let g:indentLine_char = '│'
let g:indentLine_first_char = '│'
let g:indentLine_color_gui = '#434343'
let g:indentLine_showFirstIndentLevel = 1


" Run Startify with NERDTree!
" autocmd VimEnter *
"  \   if !argc()
"  \ |   Startify
"  \ |   NERDTree
"  \ |   wincmd w
"  \ | endif


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
let MRU_Window_Height = 15

""""""""""""""""""""""""""""""
" => coc.nvim
""""""""""""""""""""""""""""""
let s:coc_source = 'source ' . g:root_path . 'vimrcs/coc_config.vim'
exec s:coc_source

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
" let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
" let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
" " create a part for server status.
" function! GetServerStatus()
"   return get(g:, 'coc_status', '')
" endfunction
" call airline#parts#define_function('coc', 'GetServerStatus')
" function! AirlineInit()
"   let g:airline_section_a = airline#section#create(['coc'])
" endfunction
" autocmd User AirlineAfterInit call AirlineInit()

" exclude overwrite statusline of list filetype
" let g:airline_exclude_filetypes = ["list"]
" let airline#extensions#coc#error_symbol = 'Error:'
" let airline#extensions#coc#warning_symbol = 'Warning:'
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'


let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
if has("gui_running")
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ' '
endif

let g:airline_symbols.dirty = ' ✗'

let g:airline_theme = 'codedark'
