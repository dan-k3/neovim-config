-- Disable default space key behavior in normal and visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Conditionally set the shell based on the environment
if vim.fn.has("win64") == 1 then
  vim.opt.shell = "pwsh"
  vim.opt.shellcmdflag = "-NoLogo -NoProfile -Command"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
  vim.opt.shellredir = "| Out-File -Encoding UTF8 %s"
  vim.opt.shellpipe = "| Out-File -Encoding UTF8 %s"
else
  -- Default shell for Unix-like environments
  vim.opt.shell = "bash"
end

-- Core editing prefs
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
--vim.opt.autochdir = true -- Uncomment to auto-change directory
