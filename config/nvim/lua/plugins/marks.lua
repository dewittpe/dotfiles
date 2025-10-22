return {
  "chentoast/marks.nvim",
  version = "*",
  lazy = false,
  config = function()
    local marks = require("marks")
    marks.setup({})

    -- Toggle functionality
    local marks_enabled = true

    function ToggleMarks()
      if marks_enabled then
        vim.cmd("sign unplace * group=Marks")
        vim.cmd("echo 'Marks hidden'")
      else
        marks.refresh()
        vim.cmd("echo 'Marks shown'")
      end
      marks_enabled = not marks_enabled
    end

    -- Keymap for toggling marks
    vim.keymap.set("n", "<leader>mt", ToggleMarks, { desc = "Toggle marks", silent = true })
  end,
}

