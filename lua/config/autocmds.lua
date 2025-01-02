-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

require("hop").setup()

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua", "luaformatter" },
    python = { "blue" },
    javascript = { "prettier" },
    --php = { { "php-cs-fixer", "phpcbf", "pint", "tlint" } },
    php = { "pint" },
    yaml = { "yamlfix" },
    html = { "prettier", "prettierd" },
  },
})
