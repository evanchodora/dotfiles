"======= COLORSCHEME
colorscheme badwolf

"======= VIM SETTINGS
syntax enable        " enable syntax processing
set tabstop=4        " number of visual spaces per TAB
set softtabstop=4    " number of spaces in TAB when editing
set expandtab        " tabs are spaces
set relativenumber   " add relative line numbers
set rnu              "  

set incsearch        " search as characters entered
set hlsearch         " highlight matches

" enable filetype plugins
filetype plugin on
filetype indent on

" set to autoread when a file is changed outside
set autoread

"======== STATUS LINE

" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " file path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " separator
set statusline+=%2*\ %Y\                                 " file type
set statusline+=%3*│                                     " separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " encoding
set statusline+=\ (%{&ff})                               " file format (dos/unix..)
set statusline+=%=                                       " right Side
set statusline+=%2*\ col:\ %02v\                         " column number
set statusline+=%3*│                                     " separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " line number / total lines (percentage of document)
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e

"======== ENCODING
set encoding=utf8

