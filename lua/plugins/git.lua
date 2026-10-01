return {
  {
    "tpope/vim-fugitive",
    dependencies = {
      "tpope/vim-rhubarb",
      "shumphrey/fugitive-gitlab.vim",
    },
    cmd = { "Git", "GBrowse", "Gdiffsplit", "Gread", "Gwrite", "Ggrep", "GMove", "GDelete" },
    keys = {
      { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git Commit" },
      { "<leader>gp", "<cmd>Git push<CR>", desc = "Git Push" },
      { "<leader>gl", "<cmd>Git log<CR>", desc = "Git Log" },
      { "<leader>gb", "<cmd>GBrowse<CR>", desc = "Git Browse" },
    },
    init = function()
      vim.g.netrw_banner = 0 -- disable netrw banner for GitBrowse to work
      vim.g.fugitive_gitlab_domains = { os.getenv("JLR_GITLAB_ADDRESS") }
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts)
      return opts
    end,
    keys = {
      { "]g", "<cmd>Gitsigns next_hunk<CR>", desc = "Next Hunk" },
      { "[g", "<cmd>Gitsigns prev_hunk<CR>", desc = "Prev Hunk" },
      { "guh", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset Hunk" },
      { "gp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview Hunk" },
    },
  },
}
