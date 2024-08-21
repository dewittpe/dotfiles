return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function ()
      require("nvim-treesitter.configs").setup({
	sync_install = true,
	ensure_installed = {
	  "r",
	  "markdown",
	  "markdown_inline",
	  "rnoweb",
	},
      })
    end,
}
