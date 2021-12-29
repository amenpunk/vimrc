-- maps.lua

local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables


options = { noremap = true }
map('n', '<leader>q', ':q! <cr>', options)
map('n', '<leader>w', ':w! <cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
map('n','<C-n>', ':CHADopen<cr>', options)
map('n','<C-n>', ':CHADopen<cr>', options)

map('n','<M-h>', ':vertical resize +5<CR>', options)
map('n','<M-l>', ':vertical resize -5<CR>', options)
map('n','<M-k>', ':resize -5<CR>', options)
map('n','<M-j>', ':resize +5<CR>', options)

map('n','<C-J>', '<C-W>j', options)
map('n','<C-K>', '<C-W>k', options)
map('n','<C-L>', '<C-W>l', options)
map('n','<C-H>', '<C-W>h', options)
