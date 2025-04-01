return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  keys = {
    {
      '<leader>pt',
      ':DBUIToggle<CR>',
      desc = 'Toggle Persistent UI',
    },
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    -- vim.g.db_ui_save_location = '~/Dropbox/dev/nvim/dadbod_db_ui_queries'
    -- on MacOS, we need specific location for DropBox
    vim.g.db_ui_save_location = '/Users/ajiyakin/Library/CloudStorage/Dropbox'
  end,
}
