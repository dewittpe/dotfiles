return {
  "R-nvim/R.nvim",
  lazy = false,
  opts = {
    -- Create a table with the options to be passed to setup()
  },
  config = function(_, opts)
    vim.g.rout_follow_colorscheme = true
    local opts = {
                R_args = {"--quiet", "--no-save", "--no-restore"},
                min_editor_width = 92,
                rconsole_width = 0,
                rconsole_height= 25,
                nvimpager = "split_v",
	}
    require("r").setup(opts)
    require("r.pdf.generic").open = vim.ui.open
  end,
}
