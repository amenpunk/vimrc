-- return {
--   "rmagatti/auto-session",
--   config = function()
--     require("auto-session").setup({
--
--       vim.keymap.set("n", "<Leader>ps", require("auto-session.session-lens").search_session, { noremap = true }),
--     })
--   end,
-- }
return {
  {
    "rmagatti/auto-session",
    lazy = false,
    dependencies = {
      "nvim-telescope/telescope.nvim", -- Only needed if you want to use session lens
    },

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/workspace", "~/Downloads", "/" },
      -- log_level = 'debug',
    },
  },
}
