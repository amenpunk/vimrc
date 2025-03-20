-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

require("hop").setup()
-- require("obsidian").setup({
--   workspaces = {
--     {
--       name = "drive",
--       path = "~/Drive/Obsidian/",
--     },
--   },
-- })

-- require("precognition").setup({
--   startup = false,
--   startVisible = false,
--   showBlankVirtLine = true,
-- })

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua", "luaformatter" },
    python = { "blue" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    graphql = { "prettier" },
    php = { "pint" },
    yaml = { "yamlfix" },
    html = { "prettier", "prettierd" },
  },
})

require("lualine").setup({
  options = {
    theme = require("material.lualine"),
  },
})
-- setup must be called before loading
--vim.cmd.colorscheme("catppuccin")
