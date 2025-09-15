return {
  -- Main plugin spec for rest.nvim
  {
    "rest-nvim/rest.nvim",
    -- Lazy-load on http or rest filetypes
    ft = { "http", "rest" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- Use the default configuration
    config = true,
  },

  -- Separate spec to extend nvim-treesitter's options
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Add http to the list of parsers to be installed
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "http" })
      end
    end,
  },
}