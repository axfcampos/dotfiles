set nocompatible              " be iMproved, required
filetype off                  " required

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on     " required

imap <C-c> <CR><Esc>O

let g:syntastic_check_on_open=1

" These are the tweaks I apply to YCM's config, you don't need them but they
" might help.
" " YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

syntax on
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set backspace=indent,eol,start
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

"""" VIM-AIRLINE
" vim-airline doesnt show up, use this
set laststatus=2
" vim-airline load fonts
let g:airline_powerline_fonts = 1
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#tabline#enabled = 1

"Ignore case when searching
set ignorecase

"Highlight search things
set hlsearch

" For nesC highlight to work
augroup filetypedetect
  au! BufRead,BufNewFile *nc setfiletype nc
augroup END
