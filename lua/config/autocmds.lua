-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
require("lualine").setup({
  options = {
    theme = require("material.lualine"),
    -- theme = "monokai-nightasty",
  },
})

require("hop").setup()
