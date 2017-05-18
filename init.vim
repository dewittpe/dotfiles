" Pathogen Plugin Manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" 
syntax enable
filetype plugin on
filetype indent on

" Local leader is set to a comma because the standard backlash is annoying when
" working in .Rnw files
let maplocalleader = ","

" formatting options
set textwidth=80
set formatoptions+=rc
set nowrap 
set number
set nospell
set nowrap

" Deal with tabs
set tabstop=2
set shiftwidth=2
set expandtab

" formatting options
set textwidth=80
set formatoptions+=rc

" Highlighting
hi SpellBad cterm=underline,bold ctermbg=red ctermfg=white

set hlsearch
" Enable and disable search highlighting
nmap <leader>q :set hlsearch!<CR>

" Code Folding options
set foldmethod=syntax
set foldlevel=4

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
"set laststatus=2
"let g:airline_powerline_fonts=0
"set ttimeoutlen=50

" ------------------------------------------------------------------------------
" Set up for Nvim-r plugin
" ------------------------------------------------------------------------------
set nocompatible

let R_hl_term = 0
let R_assign = 0
let R_args = ['--no-save', '--no-restore', '--quiet']
let Rout_more_colors = 1
let R_insert_mode_cmds = 1
let R_rconsole_width = 0

" ------------------------------------------------------------------------------
" end of file
