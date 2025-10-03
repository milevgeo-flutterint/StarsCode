vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set
local options = { noremap = true, silent = true }

-- General keymaps
map("i", "jk", "<ESC>", options)
map("n", "<leader>q", "<cmd>q<CR>", options)
map("n", "<leader>w", "<cmd>w<CR>", options)
map("n", "<leader>x", "<cmd>x<CR>", options)
map("n", "<leader>/", "<cmd>noh<CR>", options)

-- File explorer
map("n", "<C-b>", ":Neotree toggle reveal_force_cwd<cr>", options)

-- Tabs
map("n", "<A-,>", "<cmd>BufferPrevious<CR>", options)
map("n", "<A-.>", "<cmd>BufferNext<CR>", options)
map("n", "<C-t>", "<cmd>:tabnew<CR>", options)
map("n", "<A-c>", "<cmd>BufferClose<CR>", options)

-- Git
map("n", "<leader>gg", "<cmd>LazyGit<CR>", options)
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", options)
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", options)

-- Session management
map("n", "<leader>ss", "<cmd>lua require('persistence').load()<CR>", options)
map("n", "<leader>sl", "<cmd>lua require('persistence').load({ last = true })<CR>", options)
map("n", "<leader>sd", "<cmd>lua require('persistence').stop()<CR>", options)

-- Splits
map({ "n", "v" }, "<C-A-h>", "<C-w><", options)
map({ "n", "v" }, "<C-A-l>", "<C-w>>", options)
