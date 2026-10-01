return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    cmd = { "ToggleTerm", "ToggleTermToggleAll" },
    keys = {
      { "<leader><Enter>", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    },
    opts = {
      direction = "float",
      float_opts = {
        border = "curved",
      },
    },
  },
}
