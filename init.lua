vim.rocks.setup({
  enabled   = false,
  hererocks = false,
})

require("config.lazy")

-- Core editing prefs
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
