return {
  -- "cpea2506/one_monokai.nvim",
  -- { "ellisonleao/gruvbox.nvim" },
  -- "https://gitlab.com/__tpb/monokai-pro.nvim",
  -- "felipeagc/fleet-theme-nvim",
  -- "navarasu/onedark.nvim",
  -- "rebelot/kanagawa.nvim",
  -- "bluz71/vim-moonfly-colors",
  -- { "nyoom-engineering/oxocarbon.nvim" },
  -- "nyngwang/nvimgelion",

  -- branch = "main",
  -- lazy = true,

  "kaicataldo/material.vim",
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
      -- style = "darker",
      material_theme_style = "palenight",
    },
  },

  -- -- monokai theme
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
  --   "felipeagc/fleet-theme-nvim",
  --   config = function()
  --     vim.cmd("colorscheme fleet")
  --   end,
  -- },
  -- evangelion theme
  -- {
  --   "nyngwang/nvimgelion",
  --   config = function()
  --     -- do whatever you want for further customization~
  --   end,
  -- },
}
