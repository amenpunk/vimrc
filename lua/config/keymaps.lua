-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

-- Acciones rápidas
map({ "n", "x", "o" }, "<leader>a", "<cmd>HopWord<CR>", { desc = "Hop Word" })
map("n", "<leader>w", "<cmd>w!<CR>", { desc = "Save File Force" })
map({ "n", "t" }, "<leader><Enter>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
map("n", "==", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "LSP Format" })
map({ "n", "v" }, "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find Files" })
map("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Toggle NeoTree" })
map({ "n", "v" }, "<leader>dd", "<cmd>DBUI<CR>", { desc = "Database UI" })

-- Telescope pickers diferidos (lazy friendly)
map("n", "<C-b>", function()
  require("telescope.builtin").buffers()
end, { desc = "Find Buffers" })
map("n", "<leader>pc", function()
  require("telescope.builtin").colorscheme()
end, { desc = "Pick Colorscheme" })
map("n", "<leader>pf", function()
  require("telescope.builtin").lsp_document_symbols()
end, { desc = "Pick Function / Symbol" })

-- Navegación entre ventanas
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- Redimensión de buffers/ventanas
map("n", "<M-h>", "<cmd>vertical resize +5<CR>", { desc = "Increase Window Width" })
map("n", "<M-l>", "<cmd>vertical resize -5<CR>", { desc = "Decrease Window Width" })
map("n", "<M-k>", "<cmd>resize -5<CR>", { desc = "Decrease Window Height" })
map("n", "<M-j>", "<cmd>resize +5<CR>", { desc = "Increase Window Height" })

-- Navegación de BufferLine por número
for i = 1, 9 do
  map(
    "n",
    string.format("<A-%d>", i),
    string.format("<cmd>BufferLineGoToBuffer %d<CR>", i),
    { desc = string.format("Go to Buffer %d", i) }
  )
end
map("n", "<A-0>", "<cmd>BufferLinePickClose<CR>", { desc = "BufferLine Pick Close" })

-- Modo terminal
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit Terminal Mode" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Terminal Window Left" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Terminal Window Down" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Terminal Window Up" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Terminal Window Right" })

-- Mover bloques en modo visual
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Selection Down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Selection Up" })

-- Registro de descripciones para which-key de forma segura
local ok_wk, wk = pcall(require, "which-key")
if ok_wk then
  wk.add({
    { "<leader>p", group = "pick" },
    { "<leader>pc", desc = "Pick colorscheme" },
    { "<leader>pf", desc = "Pick function / symbol" },
    { "<leader>ps", desc = "Pick session" },
  })
end

-- Custom function to compile and debug C/C++
local function compile_and_debug()
  local current_file = vim.fn.expand("%:p")
  local executable_name = vim.fn.expand("%:r")
  local filetype = vim.bo.filetype

  local compile_command
  if filetype == "c" then
    compile_command = "gcc -g " .. vim.fn.shellescape(current_file) .. " -o " .. vim.fn.shellescape(executable_name)
  elseif filetype == "cpp" then
    compile_command = "g++ -g " .. vim.fn.shellescape(current_file) .. " -o " .. vim.fn.shellescape(executable_name)
  else
    vim.notify("Not a C or C++ file, cannot compile and debug.", vim.log.levels.ERROR)
    return
  end

  vim.notify("Compiling: " .. compile_command)
  vim.fn.jobstart(compile_command, {
    on_exit = function(_, exit_code)
      vim.schedule(function()
        if exit_code == 0 then
          vim.notify("Compilation successful. Starting debugger...")
          require("dap").continue()
        else
          vim.notify("Compilation failed. Check for errors.", vim.log.levels.ERROR)
        end
      end)
    end,
  })
end

-- Create the custom command
vim.api.nvim_create_user_command("DebugRun", compile_and_debug, {
  nargs = 0,
  desc = "Compile and run the current C/C++ file with the debugger",
})
