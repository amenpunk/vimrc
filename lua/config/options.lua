-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.background = "dark"
vim.g.material_theme_style = "darker"
vim.g.material_terminal_italics = 1

vim.g.code_action_menu_window_border = "single"
vim.g.lazyvim_picker = "telescope"
vim.o.mousemoveevent = true

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.cmd([[highlight WinSeparator guifg=NONE]])
