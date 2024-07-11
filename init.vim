" Pathogen Plugin Manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" 
"syntax enable
syntax on
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
set scrolloff=3

" Highlighting
hi DiffAdd       ctermfg=231  ctermbg=22   cterm=NONE
hi DiffChange    ctermfg=231  ctermbg=30   cterm=NONE
hi DiffDelete    ctermfg=196  ctermbg=88   cterm=NONE
hi DiffText      ctermfg=16   ctermbg=214  cterm=NONE

hi SpellBad cterm=underline,bold ctermbg=red ctermfg=white
hi Folded ctermbg=NONE

set hlsearch
" Enable and disable search highlighting
nmap <leader>q :set hlsearch!<CR>

" Code Folding options
"set foldmethod=marker
"set foldlevel=4
set foldmethod=indent
set foldlevel=2

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
let R_args = ['--no-save', '--no-restore', '--quiet']
let Rout_more_colors = 1
let R_insert_mode_cmds = 1
let R_rconsole_width = 0
let R_rconsole_height = 15
let R_nvim_wd = 1
let R_assign = 0

" Setup Vim to use the remote R only if the output of df includes
" the string 'remoteR', that is, the remote file system is mounted:
"      if system('df') =~ 'remoteR'
"          let $NVIM_IP_ADDRESS = substitute(system("hostname -I"), " .*", "", "")
"          let R_app = '/home/peterdewitt/bin/sshR'
"          let R_cmd = '/home/peterdewitt/bin/sshR'
"          let R_compldir = '/home/peterdewitt/.remoteR/NvimR_cache'
"          let R_tmpdir = '/home/peterdewitt/.remoteR/NvimR_cache/tmp'
"          let R_remote_tmpdir = '/home/dewittp/.cache/NvimR_cache/tmp'
"          let R_nvimcom_home = '/home/peterdewitt/.remoteR/R_library/nvimcom'
"      endif

" ------------------------------------------------------------------------------
" end of file
