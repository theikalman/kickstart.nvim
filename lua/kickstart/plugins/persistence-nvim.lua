return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
  keys = {
    {
      '<leader>Sl',
      desc = 'Load Current Dir. Session',
      function()
        require('persistence').load()
      end,
    },
  },
}
