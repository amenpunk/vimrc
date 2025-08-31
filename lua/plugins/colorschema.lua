return {
  -- {
  --   "felipeagc/fleet-theme-nvim",
  --   config = function()
  --     vim.cmd("colorscheme fleet")
  --   end,
  -- },

  -- "cpea2506/one_monokai.nvim",
  -- { "ellisonleao/gruvbox.nvim" },
  -- "https://gitlab.com/__tpb/monokai-pro.nvim",
  -- "navarasu/onedark.nvim",
  -- {
  --   "rebelot/kanagawa.nvim",
  -- },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads first
  -- },
  -- { "savq/melange-nvim" },
  -- {
  --   "ribru17/bamboo.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- require("bamboo").setup({
  --     --   -- optional configuration here
  --     -- })
  --     -- require("bamboo").load()
  --   end,
  -- },
  --{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- { "nyoom-engineering/oxocarbon.nvim" },
  -- "nyngwang/nvimgelion",
  -- material
  {
    "kaicataldo/material.vim",
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "material",
        style = "darker",
        material_theme_style = "palenight",
      },
      setup = function()
        vim.opt.background = "dark" -- default to dark or light style
        vim.g.material_theme_style = "dark"
      end,
    },
  },
  -- -- -- monokai theme
  -- {
  --   "polirritmico/monokai-nightasty.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     dark_style_background = "transparent",
  --   },
  -- },
  -- flet theme
  -- {
  -- {
  --   "felipeagc/fleet-theme-nvim",
  --   config = function()
  --     -- vim.cmd("colorscheme fleet")
  --   end,
  -- },
  -- },
  -- -- doom one
  -- {
  --   "NTBBloodbath/doom-one.nvim",
  --   config = function()
  --     vim.cmd("colorscheme doom-one")
  --   end,
  --   setup = function()
  --     vim.g.doom_one_cursor_coloring = false
  --     -- Set :terminal colors
  --     vim.g.doom_one_terminal_colors = true
  --     -- Enable italic comments
  --     vim.g.doom_one_italic_comments = false
  --     -- Enable TS support
  --     vim.g.doom_one_enable_treesitter = true
  --     -- Color whole diagnostic text or only underline
  --     vim.g.doom_one_diagnostics_text_color = false
  --     -- Enable transparent background
  --     vim.g.doom_one_transparent_background = true
  --
  --     -- Pumblend transparency
  --     vim.g.doom_one_pumblend_enable = false
  --     vim.g.doom_one_pumblend_transparency = 100
  --
  --     -- Plugins integration
  --     vim.g.doom_one_plugin_neorg = true
  --     vim.g.doom_one_plugin_barbar = false
  --     vim.g.doom_one_plugin_telescope = false
  --     vim.g.doom_one_plugin_neogit = true
  --     vim.g.doom_one_plugin_nvim_tree = true
  --     vim.g.doom_one_plugin_dashboard = true
  --     vim.g.doom_one_plugin_startify = true
  --     vim.g.doom_one_plugin_whichkey = true
  --     vim.g.doom_one_plugin_indent_blankline = true
  --     vim.g.doom_one_plugin_vim_illuminate = true
  --     vim.g.doom_one_plugin_lspsaga = false
  --   end,
  -- },
  -- {
  --   "felipeagc/fleet-theme-nvim",
  --   config = function() vim.cmd("colorscheme fleet") end,
  --   {
  --     "LazyVim/LazyVim",
  --     opts = {
  --       colorscheme = "fleet",
  --     },
  --   },
  -- },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin-mocha",
      },
    },
  },

}
