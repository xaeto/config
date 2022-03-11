local filetypes = require('filetype')

local default = {
  shiftwidth = 2,
  tabstop = 2,
  textwidth = 200
}

local python = {
  shiftwidth = 4,
  tabstop = 4,
  textwidth = 200
}

filetypes.setup({
  enable = true,
  config = {
    c = default,
    lua = default,
    python = python
  }
})
