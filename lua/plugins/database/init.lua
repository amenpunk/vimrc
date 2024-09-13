return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_winwidth = 35
    vim.g.db_ui_auto_execute_table_helpers = 1
    vim.g.db_ui_icons = {
      expanded = "▾",
      collapsed = "▸",
      saved_query = "*",
      new_query = "+",
      tables = "~",
      buffers = "»",
      connection_ok = "✓",
      connection_error = "✕",
    }
    vim.g.db_ui_show_help = 1
    vim.g.db_ui_save_location = "~/Drive/Querys"
    vim.g.db_ui_winwidth = 30
    vim.g.db_ui_table_helpers = {
      postgres = {
        select = "SELECT * FROM %s LIMIT 100",
      },
      mysql = {
        select = "SELECT * FROM %s LIMIT 100",
      },
    }
  end,
}
