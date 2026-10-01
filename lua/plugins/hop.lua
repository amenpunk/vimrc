return {
  {
    "smoka7/hop.nvim",
    version = "*",
    event = "VeryLazy",
    cmd = {
      "HopWord",
      "HopChar1",
      "HopChar2",
      "HopPattern",
      "HopLine",
      "HopAnywhere",
      "HopCamelCase",
    },
    keys = {
      {
        "<leader>a",
        "<cmd>HopWord<cr>",
        mode = { "n", "x", "o" },
        desc = "Hop Word",
      },
    },
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },
}
