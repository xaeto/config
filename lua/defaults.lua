local opt = vim.opt
opt.termguicolors = true

-- use space as a the leader key
vim.g.mapleader = ' '

opt.background = "dark"

local indent = 4

-- local to buffer options ----
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent
opt.expandtab = true
opt.smartindent = true
opt.swapfile = false

---- local to window options ----
opt.signcolumn = 'no'
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.list = true

---- global options ----
opt.cmdheight = 2
opt.hlsearch = false
opt.incsearch = true
opt.hidden =  true
opt.errorbells = false
opt.ignorecase = true
opt.smartcase= true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.wildmode = "list:longest"
opt.backup = false
opt.undofile = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.joinspaces = false
opt.showmode = false
opt.background = "dark"
opt.guicursor = ''
opt.updatetime = 300

opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}
