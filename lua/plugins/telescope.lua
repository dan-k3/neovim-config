return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      -- Configure telescope
      local actions = require('telescope.actions')
      require('telescope').setup{
        defaults = {
          mappings = {
            i = {
              ["<C-n>"] = actions.toggle_selection + actions.move_selection_worse,
              ["<C-p>"] = actions.toggle_selection + actions.move_selection_better,
              ["<Tab>"] = actions.move_selection_next,
              ["<S-Tab>"] = actions.move_selection_previous,
            },
            n = {
              ["<C-n>"] = actions.toggle_selection + actions.move_selection_worse,
              ["<C-p>"] = actions.toggle_selection + actions.move_selection_better,
              ["<Tab>"] = actions.move_selection_next,
              ["<S-Tab>"] = actions.move_selection_previous,
            }
          }
        }
      }

      -- Key mappings for general Telescope functionality
      vim.keymap.set("n", "<space>bb", require("telescope.builtin").builtin, { desc = "Telescope builtins" })
      vim.keymap.set("n", "<space>tt", require("telescope.builtin").treesitter, { desc = "Telescope treesitter" })
      vim.keymap.set("n", "<space>ss", require("telescope.builtin").search_history, { desc = "Search history" })
      vim.keymap.set("n", "<space>rr", require("telescope.builtin").reloader, { desc = "Reload modules" })

      -- These mappings allow quick access to file searching, grep, buffers, help tags, etc
      vim.keymap.set("n", "<space>ff", require("telescope.builtin").find_files, { desc = "Find files" })
      vim.keymap.set("n", "<space>fg", require("telescope.builtin").live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "<space>fb", require("telescope.builtin").buffers, { desc = "Find buffers" })
      vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags, { desc = "Help tags" })
      vim.keymap.set("n", "<space>fo", require("telescope.builtin").oldfiles, { desc = "Old files" })
      vim.keymap.set("n", "<space>fc", require("telescope.builtin").commands, { desc = "Commands" })
      vim.keymap.set("n", "<space>fl", require("telescope.builtin").loclist, { desc = "Location list" })
      vim.keymap.set("n", "<space>fr", require("telescope.builtin").registers, { desc = "Registers" })
      vim.keymap.set("n", "<space>fw", require("telescope.builtin").grep_string, { desc = "Grep string" })
      vim.keymap.set("n", "<space>fm", require("telescope.builtin").keymaps, { desc = "Key mappings" })
      vim.keymap.set("n", "<space>fs", function() require("telescope.builtin").spell_suggest(require("telescope.themes").get_dropdown()) end, { desc = "Spell suggestions" })
      vim.keymap.set("n", "<space>ft", require("telescope.builtin").tags, { desc = "Find tags" })

      -- Additional mappings for various Telescope functionalities
      vim.keymap.set("n", "<space>fM", require("telescope.builtin").man_pages, { desc = "Man pages" })
      vim.keymap.set("n", "<space>fF", require("telescope.builtin").current_buffer_fuzzy_find, { desc = "Fuzzy find in buffer" })
      vim.keymap.set("n", "<space>fC", require("telescope.builtin").colorscheme, { desc = "Colorschemes" })
      vim.keymap.set("n", "<space>fP", require("telescope.builtin").pickers, { desc = "Previous pickers" })
      vim.keymap.set("n", "<space>fH", require("telescope.builtin").highlights, { desc = "Highlight groups" })
      vim.keymap.set("n", "<space>fL", require("telescope.builtin").filetypes, { desc = "Filetypes" })
      vim.keymap.set("n", "<space>fD", require("telescope.builtin").diagnostics, { desc = "Diagnostics" })
      vim.keymap.set("n", "<space>fR", require("telescope.builtin").resume, { desc = "Resume last picker" })

      -- Git-related mappings
      vim.keymap.set("n", "<space>gf", require("telescope.builtin").git_files, { desc = "Git files" })
      vim.keymap.set("n", "<space>gb", require("telescope.builtin").git_branches, { desc = "Git branches" })
      vim.keymap.set("n", "<space>gc", require("telescope.builtin").git_commits, { desc = "Git commits" })
      vim.keymap.set("n", "<space>gC", require("telescope.builtin").git_bcommits, { desc = "Git buffer commits" })
      vim.keymap.set("n", "<space>gs", require("telescope.builtin").git_status, { desc = "Git status" })
      vim.keymap.set("n", "<space>gS", require("telescope.builtin").git_stash, { desc = "Git stash" })

      -- LSP-related mappings
      vim.keymap.set("n", "<space>lr", require("telescope.builtin").lsp_references, { desc = "LSP references" })
      vim.keymap.set("n", "<space>ls", require("telescope.builtin").lsp_document_symbols, { desc = "LSP document symbols" })
      vim.keymap.set("n", "<space>lw", require("telescope.builtin").lsp_workspace_symbols, { desc = "LSP workspace symbols" })
      vim.keymap.set("n", "<space>ld", require("telescope.builtin").lsp_definitions, { desc = "LSP definitions" })
      vim.keymap.set("n", "<space>li", require("telescope.builtin").lsp_implementations, { desc = "LSP implementations" })
      vim.keymap.set("n", "<space>lD", require("telescope.builtin").lsp_type_definitions, { desc = "LSP type definitions" })
    end
  }
}
