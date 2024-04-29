return {
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    tag = "*",
    config = function()
      require("toggleterm").setup()
    end,
  },
}
