-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     vim.cmd("colorscheme rose-pine")
--   end
-- }

  -- return { -- You can easily change to a different colorscheme.
  --   -- Change the name of the colorscheme plugin below, and then
  --   -- change the command in the config to whatever the name of that colorscheme is.
  --   --
  --   -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --   "folke/tokyonight.nvim",
  --   -- priority = 1000, -- Make sure to load this before all the other start plugins.
  --   -- init = function()
  --   -- Load the colorscheme here.
  --   -- Like many other themes, this one has different styles, and you could load
  --   -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --   -- vim.cmd.colorscheme 'tokyonight-night'
  --
  --   -- You can configure highlights by doing something like:
  --   --   vim.cmd.hi 'Comment gui=none'
  --   -- end,
  -- },

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
