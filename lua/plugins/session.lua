return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup({

      vim.keymap.set("n", "<Leader>ps", require("auto-session.session-lens").search_session, { noremap = true }),
    })
  end,
}
