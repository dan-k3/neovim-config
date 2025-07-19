-- Disable default space key behavior in normal and visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Default shell (on Windows)
vim.opt.shell = "wsl.exe"
vim.opt.shellcmdflag = "-e bash -ic"
vim.opt.shellredir = "2>&1 | tee"
vim.opt.shellpipe  = "2>&1 | tee"
vim.opt.shellquote = ""
vim.opt.shellxquote= ""
--vim.opt.shell = "pwsh" -- Uncomment for PowerShell

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
vim.opt.autochdir = true