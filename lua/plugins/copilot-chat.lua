return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    keys = {
      -- Desactivar todos los atajos en <leader>a tanto en normal como en visual
      { "<leader>a", false, mode = { "n", "x" } },
      { "<leader>aa", false, mode = { "n", "x" } },
      { "<leader>ax", false, mode = { "n", "x" } },
      { "<leader>aq", false, mode = { "n", "x" } },
      { "<leader>ap", false, mode = { "n", "x" } },

      -- Mover los atajos de CopilotChat a <leader>c (Chat)
      { "<leader>c", "", desc = "+code/chat", mode = { "n", "x" } },
      {
        "<leader>cc",
        function()
          return require("CopilotChat").toggle()
        end,
        desc = "Toggle (CopilotChat)",
        mode = { "n", "x" },
      },
      {
        "<leader>cq",
        function()
          local input = vim.fn.input("Quick Chat: ")
          if input ~= "" then
            require("CopilotChat").ask(input)
          end
        end,
        desc = "Quick Chat (CopilotChat)",
        mode = { "n", "x" },
      },
      {
        "<leader>cp",
        function()
          require("CopilotChat").select_prompt()
        end,
        desc = "Prompt Actions (CopilotChat)",
        mode = { "n", "x" },
      },
      {
        "<leader>cx",
        function()
          return require("CopilotChat").reset()
        end,
        desc = "Clear (CopilotChat)",
        mode = { "n", "x" },
      },
    },
  },
}
