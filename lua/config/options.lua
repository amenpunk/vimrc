-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.background = "dark" -- default to dark or light style
vim.o.background = "dark" -- default to dark or light style
vim.g.material_theme_style = "darker-community"
vim.g.material_terminal_italics = 1
-- vim.cmd.colorscheme("catppuccin-latte")
--" catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

vim.g.code_action_menu_window_border = "single"
vim.g.lazyvim_picker = "telescope"
vim.o.mousemoveevent = true

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- vim.cmd([[highlight DashboardHeader guifg=#ff0000]])
-- vim.cmd([[highlight WinSeparator guifg=#292929]])
vim.cmd([[highlight WinSeparator guifg=NONE]])
-- vim.cmd([[set fillchars+=vert:\▏]])
-- vim.cmd([[set termguicolors]])
-- vim.g.dashboard_preview_file = path to logo file like
-- ~/.config/nvim/neovim.cat
-- vim.g.dashboard_preview_file_height = 12
-- vim.g.dashboard_preview_file_width = 80
vim.g.rest_nvim = {
  result_split_horizontal = false,
  result_split_in_place = false,
  skip_ssl_verification = true,
  encode_url = true,
  highlight = {
    enabled = true,
    timeout = 50,
  },
  result = {
    show_url = true,
    show_http_info = true,
    show_headers = true,
  },
  jump_to_request = false,
  custom_dynamic_variables = {},
  yank_dry_run = true,
}
