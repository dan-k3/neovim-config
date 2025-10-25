require("config.options")
require("config.remap")
require("config.lazy")

-- Netrw settings
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4 -- Open in previous window (default is 0)

vim.opt.splitright = true

-- Configure LSP clients

-- Set default root markers for all clients
vim.lsp.config('*', {
  root_markers = { '.git' },
})

-- Set configuration for typescript language server
vim.lsp.config('ts_ls', {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
})

-- Enable Typescript Language Server
vim.lsp.enable('ts_ls')

-- Set configuration for python language server
vim.lsp.config('pyright', {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
})

-- Enable Python Language Server
vim.lsp.enable('pyright')

-- Set configuration for c# language server
vim.lsp.config('csharp_ls', {
  cmd = { 'csharp-language-server', '--stdio' },
  filetypes = { 'cs' },
})

-- Enable C# Language Server
vim.lsp.enable('csharp_ls')
