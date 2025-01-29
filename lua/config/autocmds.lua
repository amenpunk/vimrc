-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

require("hop").setup()

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

require("catppuccin").setup({
  -- flavour = "auto", -- latte, frappe, macchiato, mocha
  -- background = { -- :h background
  --     light = "latte",
  --     dark = "mocha",
  -- },
  transparent_background = false, -- disables setting the background color.
  -- show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  -- term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  -- dim_inactive = {
  --     enabled = false, -- dims the background color of inactive window
  --     shade = "dark",
  --     percentage = 0.15, -- percentage of the shade to apply to the inactive window
  -- },
  -- no_italic = false, -- Force no italic
  -- no_bold = false, -- Force no bold
  -- no_underline = false, -- Force no underline
  -- styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --     comments = { "italic" }, -- Change the style of comments
  --     conditionals = { "italic" },
  --     loops = {},
  --     functions = {},
  --     keywords = {},
  --     strings = {},
  --     variables = {},
  --     numbers = {},
  --     booleans = {},
  --     properties = {},
  --     types = {},
  --     operators = {},
  --     -- miscs = {}, -- Uncomment to turn off hard-coded styles
  -- },
  color_overrides = {
    all = {
      base = "#1e1e1e",
      mantle = "#1e1e1e",
      crust = "#1e1e1e",
    },
  },
  -- custom_highlights = {},
  -- default_integrations = true,
  -- integrations = {
  --     cmp = true,
  --     gitsigns = true,
  --     nvimtree = true,
  --     treesitter = true,
  --     notify = false,
  --     mini = {
  --         enabled = true,
  --         indentscope_color = "",
  --     },
  --     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  -- },
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")
