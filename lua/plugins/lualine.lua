return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      -- Use material.nvim's official lualine theme (not lualine's outdated builtin 'material')
      opts.options.theme = "material-nvim"
      opts.options.globalstatus = true
      opts.tabline = nil
    end,
  },
}
