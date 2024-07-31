return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({

      vim.keymap.set("n", "<Leader>ls", require("auto-session.session-lens").search_session, { noremap = true }),
    })
  end,
}
