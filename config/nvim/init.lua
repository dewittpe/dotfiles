-- Must be before creating other maps:
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- Set your global variables and options above this line --

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup('plugins')

vim.o.number = true
vim.o.relativenumber = true
--vim.o.formatoptions = '+=rc'
vim.cmd[[set formatoptions+=rc]]
vim.o.textwidth = 80
vim.o.scrolloff = 2
vim.o.sidescrolloff = 5
vim.o.foldmethod = 'indent'
vim.o.foldenable = true
vim.o.lazyredraw = true -- Do not redraw, when running macros.. lazyredraw
vim.o.spellsuggest = 'fast'

-- Search
vim.o.infercase = true     -- ic:  ignore case on insert completion
vim.o.hlsearch = true      -- hls: highlights search results
vim.o.incsearch = true     -- is:  automatically begins searching as you type
vim.o.inccommand = 'split'

-- Indentation
vim.o.cindent = false
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.cmd [[colorscheme vim]]

-- Split opening
vim.cmd[[set splitright]]
vim.cmd[[set splitbelow]]

-- Ctrl-<hjkl> to move windows
vim.cmd [[noremap <C-h> <C-w>h]]
vim.cmd [[noremap <C-j> <C-w>j]]
vim.cmd [[noremap <C-k> <C-w>k]]
vim.cmd [[noremap <C-l> <C-w>l]]

-- vim-airline
vim.cmd[[set t_Co=256]]

