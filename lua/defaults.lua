local opt = vim.opt
vim.o.background = 'dark'

-- use space as a the leader key
vim.g.mapleader = ' '

-- buffer-scoped
opt.autoindent = true

-- global scope
opt.autowrite = true

opt.number = true
opt.relativenumber = true

-- Set the behavior of tab
opt.tabstop=2
opt.shiftwidth=2
opt.softtabstop=2
opt.expandtab = true

opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}

opt.termguicolors = true
opt.cmdheight = 2

vim.cmd [[colorscheme zenbones]]
