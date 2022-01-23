local filetypes = require('filetype')

local default = {
  shiftwidth = 2,
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
