" Pathogen Plugin Manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" 
syntax enable
filetype plugin on
filetype indent on

" Deal with tabs
set tabstop=2
set shiftwidth=2
set expandtab

" allow backspacing over autoindent, linebreaks, and start of inerts
set backspace=indent,eol,start
set autoindent

" Start vim with the wildmenu, line numbers, and start vim
" with the spell checker off
set wildmenu
set number
set nospell
set ruler
set nowrap

" formatting options
set textwidth=80
set formatoptions+=rc

" crtl-a and crtl-x will now work as expected for numbers with leading zeros
set nrformats-=octal

" Local leader is set to a comma because the standard backlash is annoying when
" working in .Rnw files
let maplocalleader = ","

" Highlighting options
hi SpellBad cterm=underline,bold ctermbg=red ctermfg=white
hi Folded cterm=underline,bold  ctermbg=0
set hlsearch
" Enable and disable search highlighting
nmap <leader>q :set hlsearch!<CR>

" Code Folding options
set foldmethod=marker
set foldlevel=3

" Split opening
set splitright
"set splitbelow

" Ctrl-<hjkl> to move windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" ------------------------------------------------------------------------------
" vim-airline
" ------------------------------------------------------------------------------
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts=0
set ttimeoutlen=50

" ------------------------------------------------------------------------------
" showmarks
" ------------------------------------------------------------------------------
let showmarks_enable = 0

" ------------------------------------------------------------------------------
" Set up for vim-r-plugin
" ------------------------------------------------------------------------------
set nocompatible

"let R_term = "gnome-terminal"
"let R_in_buffer = 0
"let R_applescript = 0
"let R_tmux_split = 1
let R_nvim_wd = 1



" ------------------------------------------------------------------------------
" end of file
