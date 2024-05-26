-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.material_theme_style = "darker"
vim.g.material_terminal_italics = 1
vim.g.code_action_menu_window_border = "single"

vim.g.dashboard_preview_command = "cat"
vim.g.dashboard_preview_pipeline = "lolcat"
-- vim.g.dashboard_preview_file = path to logo file like
-- ~/.config/nvim/neovim.cat
-- vim.g.dashboard_preview_file_height = 12
-- vim.g.dashboard_preview_file_width = 80

vim.cmd([[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
]])
