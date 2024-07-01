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

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- python = { "isort", "black" },
    -- javascript = { { "prettierd", "prettier" } },
    php = { { "php-cs-fixer", "phpcbf", "pint", "tlint" } },
  },
})
