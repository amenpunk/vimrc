-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.background = "dark" -- default to dark or light style
vim.g.material_theme_style = "darker-community"
vim.g.material_terminal_italics = 1
--vim.cmd.colorscheme("catppuccin-mocha")
--" catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

vim.g.code_action_menu_window_border = "single"
vim.g.lazyvim_picker = "telescope"

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.cmd([[highlight DashboardHeader guifg=#ff0000]])
vim.cmd([[highlight WinSeparator guifg=#292929]])
vim.cmd([[set fillchars+=vert:\▏]])
-- vim.g.dashboard_preview_file = path to logo file like
-- ~/.config/nvim/neovim.cat
-- vim.g.dashboard_preview_file_height = 12
-- vim.g.dashboard_preview_file_width = 80
