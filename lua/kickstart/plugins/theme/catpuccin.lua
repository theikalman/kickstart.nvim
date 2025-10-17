-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     vim.cmd("colorscheme rose-pine")
--   end
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  init = function()
    -- valid values are: catppuccin-latte catppuccin-frappe catppuccin-macchiato catppuccin-mocha
    vim.cmd.colorscheme("catppuccin-macchiato")
    vim.cmd.hi("Comment gui=none")
  end,
  config = function()
    local catpuccin = require("catppuccin")
    catpuccin.setup({
      background = {
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        dap = true,
        dap_ui = true,
      },
    })
  end,
}
