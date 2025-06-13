return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql' }, lazy = true }, -- Optional
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration

    local cmp = require 'cmp'

      cmp.setup.filetype({ 'sql' }, {
        sources = {
          { name = 'vim-dadbod-completion' },
          { name = 'buffer' },
        },
      })

    vim.g.db_ui_use_nerd_fonts = 1

    -- Load database configuration from separate file
    local db_config = require 'kickstart.plugins.db-config'
    vim.g.dbs = db_config

    --{
    --name = 'production',
    -- url = function()
    --      return vim.fn.system 'get-prod-url'
    -- end,
    --},
  end,
}
