return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      --vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Telescope find files' })
      vim.keymap.set("n", "<leader>ff", function()
        local builtin = require("telescope.builtin")
        local utils = require("telescope.utils")

        local ok, git_root = pcall(utils.get_git_root)
        if ok then
          builtin.find_files({ cwd = git_root })
        else
          builtin.find_files()  -- defaults to current directory
        end
      end, { desc = "Find Files (Git Root or CWD)" })
      vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, { desc = 'Telescope help tags' })
    end
  }
