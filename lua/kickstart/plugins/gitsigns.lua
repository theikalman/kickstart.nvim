-- Adds git related signs to the gutter, as well as utilities for managing changes
-- NOTE: gitsigns is already included in init.lua but contains only the base
-- config. This will add also the recommended keymaps.

return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Jump to next git change' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'Jump to previous git change' })

        -- Actions
        -- visual mode
        map('v', '<leader>ghs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Git hunk: stage' })
        map('v', '<leader>ghr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Git hunk: reset' })
        -- normal mode
        map('n', '<leader>ghs', gitsigns.stage_hunk, { desc = 'Git hunk: stage' })
        map('n', '<leader>ghr', gitsigns.reset_hunk, { desc = 'Git hunk: reset' })
        map('n', '<leader>ghS', gitsigns.stage_buffer, { desc = 'Git hunk: stage buffer' })
        map('n', '<leader>ghu', gitsigns.undo_stage_hunk, { desc = 'Git hunk: undo stage' })
        map('n', '<leader>ghR', gitsigns.reset_buffer, { desc = 'Git hunk: reset buffer' })
        map('n', '<leader>ghp', gitsigns.preview_hunk, { desc = 'Git hunk: preview' })
        map('n', '<leader>ghb', gitsigns.blame_line, { desc = 'Git hunk: blame line' })
        map('n', '<leader>ghd', gitsigns.diffthis, { desc = 'Git hunk: diff against index' })
        map('n', '<leader>ghD', function()
          gitsigns.diffthis '@'
        end, { desc = 'Git hunk: diff against last commit' })
        -- Toggles
        -- map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = 'Toggle hunk blame line' })
        -- map('n', '<leader>tD', gitsigns.toggle_deleted, { desc = 'Toggle hunk deleted' })
      end,
    },
  },
}
