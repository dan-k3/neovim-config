return {
  {
    'nvim-telescope/telescope.nvim',
    -- Use latest commit from master branch for full action support
    -- tag = '0.1.8',
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
              ["<C-n>"] = actions.toggle_selection + actions.move_selection_better,
              ["<C-p>"] = actions.toggle_selection + actions.move_selection_worse,
              ["<Tab>"] = actions.move_selection_next,
              ["<S-Tab>"] = actions.move_selection_previous,
              ["<C-k>"] = actions.preview_scrolling_up,
              ["<C-j>"] = actions.preview_scrolling_down,
              ["<C-h>"] = actions.preview_scrolling_left,
              ["<C-l>"] = actions.preview_scrolling_right,
              ["<M-k>"] = actions.results_scrolling_up,
              ["<M-j>"] = actions.results_scrolling_down,
              ["<M-l>"] = actions.results_scrolling_right,
              ["<M-h>"] = actions.results_scrolling_left,
            },
            n = {
              ["<C-n>"] = actions.toggle_selection + actions.move_selection_better,
              ["<C-p>"] = actions.toggle_selection + actions.move_selection_worse,
              ["<Tab>"] = actions.move_selection_next,
              ["<S-Tab>"] = actions.move_selection_previous,
              ["<C-k>"] = actions.preview_scrolling_up,
              ["<C-j>"] = actions.preview_scrolling_down,
              ["<C-h>"] = actions.preview_scrolling_left,
              ["<C-l>"] = actions.preview_scrolling_right,
              ["<M-k>"] = actions.results_scrolling_up,
              ["<M-j>"] = actions.results_scrolling_down,
              ["<M-l>"] = actions.results_scrolling_right,
              ["<M-h>"] = actions.results_scrolling_left,
            }
          },
          -- Add tag configuration
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          file_ignore_patterns = { "tags" },
        },
        -- Configure tag picker specifically
        pickers = {
          tags = {
            only_sort_tags = true,
            fname_width = 60,
            show_line = true,
          },
        },
      }

      -- Key mappings for general Telescope functionality
      vim.keymap.set("n", "<leader>bb", require("telescope.builtin").builtin, { desc = "Telescope builtins" })
      vim.keymap.set("n", "<leader>tt", require("telescope.builtin").treesitter, { desc = "Telescope treesitter" })
      vim.keymap.set("n", "<leader>sh", require("telescope.builtin").search_history, { desc = "Search history" })
      vim.keymap.set("n", "<leader>rr", require("telescope.builtin").reloader, { desc = "Reload modules" })
      vim.keymap.set("n", "<leader>hh", require("telescope.builtin").help_tags, { desc = "Help tags" })
      vim.keymap.set("n", "<leader>lj", require("telescope.builtin").jumplist, { desc = "Jumplist" })

      -- These mappings allow quick access to file searching, grep, buffers, help tags, etc
      vim.keymap.set("n", "<leader>F", function() require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_ivy()) end, { desc = "Fuzzy find in buffer" })
      vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find buffers" })
      vim.keymap.set("n", "<leader>fo", require("telescope.builtin").oldfiles, { desc = "Old files" })
      vim.keymap.set("n", "<leader>fv", require("telescope.builtin").vim_options, { desc = "Vim options" })
      vim.keymap.set("n", "<leader>fc", require("telescope.builtin").commands, { desc = "Commands" })
      vim.keymap.set("n", "<leader>fl", require("telescope.builtin").loclist, { desc = "Location list" })
      vim.keymap.set("n", "<leader>fr", require("telescope.builtin").registers, { desc = "Registers" })
      vim.keymap.set("n", "<leader>fw", require("telescope.builtin").grep_string, { desc = "Grep string" })
      vim.keymap.set("n", "<leader>fm", require("telescope.builtin").keymaps, { desc = "Key mappings" })
      vim.keymap.set("n", "<leader>ft", require("telescope.builtin").tags, { desc = "Find tags" })
      vim.keymap.set("n", "<leader>fn", function() require("telescope.builtin").find_files {cwd = vim.fn.stdpath("config"), prompt_title = "Find Neovim Config"} end, { desc = "Find Neovim config file" })

      -- Additional mappings for various Telescope functionalities
      vim.keymap.set("n", "<leader>fM", require("telescope.builtin").man_pages, { desc = "Man pages" })
      vim.keymap.set("n", "<leader>fC", require("telescope.builtin").colorscheme, { desc = "Colorschemes" })
      vim.keymap.set("n", "<leader>fp", require("telescope.builtin").pickers, { desc = "Previous pickers" })
      vim.keymap.set("n", "<leader>lp", require("telescope.builtin").resume, { desc = "Resume last picker" })
      vim.keymap.set("n", "<leader>fH", require("telescope.builtin").highlights, { desc = "Highlight groups" })
      vim.keymap.set("n", "<leader>fT", require("telescope.builtin").filetypes, { desc = "Filetypes" })
      vim.keymap.set("n", "<leader>fD", require("telescope.builtin").diagnostics, { desc = "Diagnostics" })
      vim.keymap.set("n", "<leader>ss", function() require("telescope.builtin").spell_suggest(require("telescope.themes").get_dropdown()) end, { desc = "Spell suggestions" })

      -- Git-related mappings
      vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "Git files" })
      vim.keymap.set("n", "<leader>gb", require("telescope.builtin").git_branches, { desc = "Git branches" })
      vim.keymap.set("n", "<leader>gC", require("telescope.builtin").git_commits, { desc = "Git commits" })
      vim.keymap.set("n", "<leader>gc", require("telescope.builtin").git_bcommits, { desc = "Git buffer commits" })
      vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status, { desc = "Git status" })
      vim.keymap.set("n", "<leader>gS", require("telescope.builtin").git_stash, { desc = "Git stash" })

      -- LSP-related mappings
      vim.keymap.set("n", "<leader>lr", require("telescope.builtin").lsp_references, { desc = "LSP references" })
      vim.keymap.set("n", "<leader>ls", require("telescope.builtin").lsp_document_symbols, { desc = "LSP document symbols" })
      vim.keymap.set("n", "<leader>lw", require("telescope.builtin").lsp_workspace_symbols, { desc = "LSP workspace symbols" })
      vim.keymap.set("n", "<leader>ld", require("telescope.builtin").lsp_definitions, { desc = "LSP definitions" })
      vim.keymap.set("n", "<leader>li", require("telescope.builtin").lsp_implementations, { desc = "LSP implementations" })
      vim.keymap.set("n", "<leader>lD", require("telescope.builtin").lsp_type_definitions, { desc = "LSP type definitions" })
    end
  }
}
