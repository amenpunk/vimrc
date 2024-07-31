return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function(_, opts)
      -- Inserts a component in lualine_c at left section
      local function ins_left(component)
        table.insert(opts.sections.lualine_c, component)
      end

      -- ins_left({
      --   -- Lsp server name .
      --   function()
      --     local msg = "No Active Lsp"
      --     local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
      --     local clients = vim.lsp.get_active_clients()
      --     if next(clients) == nil then
      --       return msg
      --     end
      --     for _, client in ipairs(clients) do
      --       local filetypes = client.config.filetypes
      --       if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
      --         return client.name
      --       end
      --     end
      --     return msg
      --   end,
      --   icon = " LSP:",
      --   color = { fg = "#ffffff", gui = "bold" },
      -- })
      --
      -- local trouble = require("trouble")
      -- local symbols = trouble.statusline({
      --   mode = "lsp_document_symbols",
      --   groups = {},
      --   title = false,
      --   filter = { range = true },
      --   format = "{kind_icon}{symbol.name:Normal}",
      --   -- The following line is needed to fix the background color
      --   -- Set it to the lualine section you want to use
      --   hl_group = "lualine_c_normal",
      -- })
      -- table.insert(opts.sections.lualine_c, {
      --   symbols.get,
      --   cond = symbols.has,
      -- })
      -- set the lualine theme

      -- opts.options.component_separators = {
      --   left = "",
      --   right = "",
      -- }
      -- opts.options.section_separators = {
      --   left = "",
      --   right = "",
      -- }
      opts.options.component_separators = ""
      opts.options.section_separators = ""
      opts.options.theme = require("material.lualine")
      return opts
      -- opts.options.theme = "onedark"
    end,
  },
}
