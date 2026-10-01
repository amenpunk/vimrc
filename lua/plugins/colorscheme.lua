return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-darker",
    },
  },
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
        cursor_line = false,
        lsp_virtual_text = false,
        non_current_windows = false,
        filetypes = {},
      },
      styles = {
        comments = {},
        strings = {},
        keywords = {},
        functions = {},
        variables = {},
        operators = {},
        types = {},
      },
      plugins = {
        "dap",
        "dashboard",
        "gitsigns",
        "nvim-web-devicons",
        "telescope",
      },
      disable = {
        colored_cursor = false,
        borders = false,
        background = true,
        term_colors = false,
        eob_lines = false,
      },
      high_visibility = {
        lighter = false,
        darker = false,
      },
      lualine_style = "default",
      async_loading = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      float = {
        transparent = false,
        solid = false,
      },
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
      },
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
      },
    },
  },
}
