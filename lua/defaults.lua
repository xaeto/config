local opt = vim.opt

-- use space as a the leader key
vim.g.mapleader = ' '
vim.o.shortmess = vim.o.shortmess .. "c"

opt.background = "dark"

local indent = 2
-- local to buffer options ----
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent
opt.autoindent = true
opt.copyindent = true
opt.expandtab = true
opt.smartindent = true
opt.swapfile = false

---- local to window options ----
opt.signcolumn = 'yes'
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.list = true

---- global options ----
opt.termguicolors = true
opt.cmdheight = 2
opt.hlsearch = false
opt.incsearch = true
opt.hidden =  true
opt.errorbells = false
opt.ignorecase = true
opt.smartcase= true
opt.splitbelow = true
opt.splitright = true
opt.wildmode = "list:longest"
opt.backup = false
opt.undofile = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.joinspaces = false
opt.showmode = false
opt.background = "dark"
opt.guicursor = ""
opt.updatetime = 50
opt.timeoutlen = 500
opt.pumheight = 10

opt.list = true
opt.listchars:append("space:⋅")
opt.listchars:append("eol:↴")

opt.completeopt = {'menu', 'menuone', 'noselect'}

require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
    show_end_of_line = true
}
