-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local options = { noremap = true }
local snip_opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map("n", "<leader>w", ":w! <CR>", options)
map("", "<leader><Enter>", ":ToggleTerm<CR>", { silent = true })
map("n", "==", ":lua vim.lsp.buf.format({ async = true} )<CR>", options)

-- cmd with control
map("n", "<C-J>", "<C-W>j", options)
map("n", "<C-K>", "<C-W>k", options)
map("n", "<C-L>", "<C-W>l", options)
map("n", "<C-H>", "<C-W>h", options)

-- buffer resize
map("n", "<M-h>", ":vertical resize +5<CR>", options)
map("n", "<M-l>", ":vertical resize -5<CR>", options)
map("n", "<M-k>", ":resize -5<CR>", options)
map("n", "<M-j>", ":resize +5<CR>", options)

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

-- visual select move
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })
