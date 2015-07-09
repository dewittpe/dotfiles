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

" Local leader is set to a comma because the standard backlash is annoying when
" working in .Rnw files
let maplocalleader = ","

" Highlighting options
hi SpellBad cterm=underline,bold ctermbg=red ctermfg=white
hi Folded cterm=underline,bold  ctermbg=0
set hlsearch
" Enable and disable search highlighting
nmap <leader>q :set hlsearch!<CR>

" for the rare time I'm using gVim
if has('gui_running')
  colorscheme vividchalk
endif

" Code Folding options
set foldmethod=indent
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
" Set up for vim-r-plugin
" ------------------------------------------------------------------------------
set nocompatible

let vimrplugin_term = "terminator" 
let vimrplugin_assign = 0 
let vimrplugin_objbr_w = 30
let vimrplugin_objbr_place = "console,right" 
let vimrplugin_vsplit = 0
let g:ScreenImpl = 'Tmux'
"let g:ScreenShellWidth = 110 
let vimrplugin_r_args = "--no-save --quiet"

" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Sep-27 14:46):
" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
    inoremap <C-Space> <C-x><C-o>
else
    inoremap <Nul> <C-x><C-o>
endif

" ------------------------------------------------------------------------------
" end of file
