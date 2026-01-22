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
    python = { "blue", "jupytext" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    graphql = { "prettier" },
    php = { "pint" },
    yaml = { "yamlfix" },
    html = { "prettier", "prettierd" },
  },
})

-- require("one_monokai").setup({
--   transparent = true,
-- })

require("bufferline").setup({})

-- setup must be called before loading
require("catppuccin").setup({
  flavour = "mocha", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = false, -- disables setting the background color.
  float = {
    transparent = false, -- enable transparent floating windows
    solid = false, -- use solid styling for floating windows, see |winborder|
  },
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
  styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
    comments = { "italic" }, -- Change the style of comments
    conditionals = { "italic" },
    loops = {},
    functions = {},
    keywords = {},
    strings = {},
    variables = {},
    numbers = {},
    booleans = {},
    properties = {},
    types = {},
    operators = {},
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
  auto_integrations = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = true,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")

require("lualine").setup({
  options = {
    theme = "catppuccin",
  },
})

require("focus").setup()

require("java").setup({
  -- Startup checks
  checks = {
    nvim_version = true, -- Check Neovim version
    nvim_jdtls_conflict = true, -- Check for nvim-jdtls conflict
  },

  -- JDTLS configuration
  jdtls = {
    version = "1.43.0",
  },

  -- Extensions
  lombok = {
    enable = true,
    version = "1.18.40",
  },

  java_test = {
    enable = true,
    version = "0.40.1",
  },

  java_debug_adapter = {
    enable = true,
    version = "0.58.2",
  },

  spring_boot_tools = {
    enable = true,
    version = "1.55.1",
  },

  -- JDK installation
  jdk = {
    auto_install = true,
    version = "17",
  },

  -- Logging
  log = {
    use_console = true,
    use_file = true,
    level = "info",
    log_file = vim.fn.stdpath("state") .. "/nvim-java.log",
    max_lines = 1000,
    show_location = false,
  },
})
