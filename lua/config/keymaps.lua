-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local builtin = require("telescope.builtin")
local options = { noremap = true }
local map = vim.api.nvim_set_keymap
local wk = require("which-key")

map("", "<leader>a", ":HopWord<CR>", { silent = true })
map("n", "<leader>w", "<Cmd>w! <CR>", options)
map("", "<leader><Enter>", ":ToggleTerm<CR>", { silent = true })
map("n", "==", "<Cmd>lua vim.lsp.buf.format({ async = true} )<CR>", options)
map("", "<C-p>", "<Cmd>Telescope find_files<cr>", options)
map("n", "<C-n>", "<Cmd>Neotree<cr>", options)
map("", "<leader>dd", "<Cmd>DBUI<CR>", options)

-- autosesison
vim.keymap.set("n", "<Leader>ps", require("auto-session.session-lens").search_session, { noremap = true })
-- telescope
vim.keymap.set("n", "<C-b>", builtin.buffers, {})
vim.keymap.set("n", "<leader>pc", builtin.colorscheme, {})
vim.keymap.set("n", "<leader>pf", builtin.lsp_document_symbols, {})
-- cmd with control
map("n", "<C-J>", "<C-W>j", options)
map("n", "<C-K>", "<C-W>k", options)
map("n", "<C-L>", "<C-W>l", options)
map("n", "<C-H>", "<C-W>h", options)

-- buffer resize
map("n", "<M-h>", "<Cmd>vertical resize +5<CR>", options)
map("n", "<M-l>", "<Cmd>vertical resize -5<CR>", options)
map("n", "<M-k>", "<Cmd>resize -5<CR>", options)
map("n", "<M-j>", "<Cmd>resize +5<CR>", options)

-- buffer search by number
map("n", "<A-1>", "<Cmd>BufferLineGoToBuffer 1 <CR>", { silent = true, noremap = true })
map("n", "<A-2>", "<Cmd>BufferLineGoToBuffer 2 <CR>", { silent = true, noremap = true })
map("n", "<A-3>", "<Cmd>BufferLineGoToBuffer 3 <CR>", { silent = true, noremap = true })
map("n", "<A-4>", "<Cmd>BufferLineGoToBuffer 4 <CR>", { silent = true, noremap = true })
map("n", "<A-5>", "<Cmd>BufferLineGoToBuffer 5 <CR>", { silent = true, noremap = true })
map("n", "<A-6>", "<Cmd>BufferLineGoToBuffer 6 <CR>", { silent = true, noremap = true })
map("n", "<A-7>", "<Cmd>BufferLineGoToBuffer 7 <CR>", { silent = true, noremap = true })
map("n", "<A-8>", "<Cmd>BufferLineGoToBuffer 8 <CR>", { silent = true, noremap = true })
map("n", "<A-9>", "<Cmd>BufferLineGoToBuffer 9 <CR>", { silent = true, noremap = true })
map("n", "<A-0>", "<Cmd>BufferLinePickClose <CR>", { silent = true, noremap = true })

-- Salir a modo normal con ESC en terminal
map('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- Moverse entre ventanas desde modo terminal (Ej: Ctrl + h/j/k/l)
map('t', '<C-h>', '<C-\\><C-n><C-w>h', { noremap = true })
map('t', '<C-j>', '<C-\\><C-n><C-w>j', { noremap = true })
map('t', '<C-k>', '<C-\\><C-n><C-w>k', { noremap = true })
map('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true })

-- visual select move
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

wk.add({
  { "<leader>pc", desc = "pick colorscheme" },
  { "<leader>pf", desc = "pick function" },
  { "<leader>ps", desc = "pick session" },
})
