local filetypes = require('filetype')

local default = {
  shiftwidth = 4,
  tabstop = 4,
  textwidth = 200
}

filetypes.register("html", {
  shiftwidth = 200
})

filetypes.setup({
  enable = true,
  config = {
    c = {
      shiftwidth = 2,
      textwidth = 200
    },
    lua = default,
  }
})
