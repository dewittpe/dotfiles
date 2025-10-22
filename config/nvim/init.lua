-- Must be before creating other maps:
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- disable netrw is strongly recommended for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
vim.o.wrap = false
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

vim.cmd [[colorscheme gruvbox]]

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

-- Set up for markdown files to allow for long lines and intuitive navigation
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.showbreak = "↪ "
    vim.keymap.set('n', 'j', 'gj', { buffer = true, noremap = true, silent = true })
    vim.keymap.set('n', 'k', 'gk', { buffer = true, noremap = true, silent = true })
    vim.keymap.set('x', 'j', 'gj', { buffer = true, noremap = true, silent = true })
    vim.keymap.set('x', 'k', 'gk', { buffer = true, noremap = true, silent = true })
    vim.keymap.set('o', 'j', 'gj', { buffer = true, noremap = true, silent = true })
    vim.keymap.set('o', 'k', 'gk', { buffer = true, noremap = true, silent = true })
  end
})

-- use to spaces for R-family buffers
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "r", "rmd", "rnoweb", "quarto" },
  callback = function()
    vim.bo.expandtab  = true
    vim.bo.shiftwidth = 2
    vim.bo.tabstop    = 2
    vim.bo.softtabstop = 2
  end,
})
