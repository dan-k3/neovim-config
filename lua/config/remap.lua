-- New map leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Manage buffers
vim.keymap.set("n", "<leader>B", ":enew<CR>", { desc = "New Buffer" })
vim.keymap.set("n", "<leader>BB", ":new<CR>", { desc = "New Split Buffer" })
vim.keymap.set("n", "<leader>BO", ":b#<CR>", { desc = "Switch to Other Buffer" })
vim.keymap.set("n", "<leader>BC", ":bd<CR>", { desc = "Close Buffer" })

-- Create and close tabs
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New Tab" })
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", { desc = "Close Other Tabs" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Tab" })

-- Navigate tabs
vim.keymap.set("n", "<leader>.", ":tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>,", ":tabprevious<CR>", { desc = "Prev Tab" })

-- Move current tab
vim.keymap.set("n", "<leader>tm", ":tabmove ", { desc = "Move Tab to Index…" })

-- Open file tree
vim.keymap.set("n", "<leader>E", vim.cmd.Ex, { desc = "Open File Explorer" })

-- Execute shell commands
vim.keymap.set("n", "<leader>!", ":! ", { desc = "Execute Shell Command" })

-- Open terminal
vim.keymap.set("n", "<leader>T", ":terminal<CR>", { desc = "Open Terminal" })

-- Exit terminal mode
vim.keymap.set("t", "<M-e>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- Move selection with auto indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Selection Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Selection Up" })

-- Paste without losing copied buffer
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste Without Losing Buffer" })

-- Format with LSP
-- vim.keymap.set("n", "<leader>f", function()
--   vim.lsp.buf.format()
-- end)

-- Replace word
--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- LSP keybinds
--local opts = { noremap = true, silent = true }
-- Show warning/error
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show Diagnostic Float", noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { desc = "Show Hover Information", noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, { desc = "Go to Definition", noremap = true, silent = true })
vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, { desc = "Go to Implementation", noremap = true, silent = true })
vim.keymap.set("n", "<leader>r", vim.lsp.buf.references, { desc = "Show References", noremap = true, silent = true })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol", noremap = true, silent = true })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions", noremap = true, silent = true })
