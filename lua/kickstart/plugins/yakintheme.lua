-- ~/.config/nvim/lua/kickstart/plugins/yakintheme.lua

return {
  {
    "yakintheme",
    dir = "~/.config/nvim/lua/kickstart/plugins", -- where the file lives
    lazy = false,
    priority = 1000, -- make sure it loads before other plugins
    config = function()
      ---------------------------------------------------
      -- Your actual theme definition starts here
      ---------------------------------------------------
      local colors = {
        black = "#000000",

        gray0 = "#1c1c1c",
        gray1 = "#3b3b3b",
        gray2 = "#636363",
        gray3 = "#919191",
        gray4 = "#bababa",
        gray5 = "#ededed",
      }

      vim.g.colors_name = "yakintheme"

      -- Reset highlights before applying
      vim.cmd("hi clear")
      if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
      end

      vim.g.colors_name = "yakintheme"

      -- Define highlight groups
      local set_hl = vim.api.nvim_set_hl
      set_hl(0, "Normal", { fg = colors.gray5, bg = colors.gray0 })
      set_hl(0, "Comment", { fg = colors.gray2, italic = true })
      set_hl(0, "String", { fg = colors.gray3 })
      set_hl(0, "Keyword", { fg = colors.gray5, italic = true })
      set_hl(0, "Function", { fg = colors.gray5 })
      set_hl(0, "Number", { fg = colors.gray5 })
      set_hl(0, "LineNr", { fg = colors.gray1 })
      set_hl(0, "CursorLineNr", { fg = colors.gray5 })
      set_hl(0, "Visual", { bg = colors.gray1 })

      ---------------------------------------------------
      -- Optional: plugin highlights (example)
      ---------------------------------------------------
      set_hl(0, "TelescopeNormal", { fg = colors.gray5, bg = colors.gray0 })
      set_hl(0, "TelescopeBorder", { fg = colors.gray1, bg = colors.gray0 })
      set_hl(0, "TelescopePromptTitle", { fg = colors.gray0, bg = colors.gray5, bold = true })

      ---------------------------------------------------
      -- Tree-sitter syntax highlights
      ---------------------------------------------------
      set_hl(0, "@comment", { fg = colors.gray2, italic = true })
      set_hl(0, "@string", { fg = colors.gray4 })
      set_hl(0, "@keyword", { fg = colors.gray5, italic = true })
      set_hl(0, "@function", { fg = colors.gray5, italic = true })
      set_hl(0, "@variable", { fg = colors.gray5 })
      set_hl(0, "@property", { fg = colors.gray5 })
      set_hl(0, "@type", { fg = colors.gray5 })
      set_hl(0, "@constant", { fg = colors.gray5, italic = true })
      set_hl(0, "@number", { fg = colors.gray5 })
      set_hl(0, "@parameter", { fg = colors.gray5 })
      set_hl(0, "Special", { fg = colors.gray5 })

      set_hl(0, "IblIndent", { fg = colors.gray1, nocombine = true })
      set_hl(0, "IblScope",  { fg = colors.gray2, nocombine = true })
    end,
  },
}
