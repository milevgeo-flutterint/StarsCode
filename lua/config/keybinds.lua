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

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "<C-j>", "<cmd>cnext<CR>zz")
map("n", "<C-k>", "<cmd>cprev<CR>zz")

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>rs", ":LspRestart<CR>")

-- Search Files in Poker Package
map("n", "<leader>sfpp", function()
	require("snacks").picker.files({
		cwd = vim.fn.expand("~/Programing/fips-web-client/apps/ps/web-client/packages/swf-poker"), -- adjust path as needed
		prompt = "Search Files in swf-poker > ",
	})
end, { desc = "Search Files in swf-poker directory" })

-- Grep in Poker Directories
map("n", "<leader>sga", function()
	-- First find the actual poker directories
	local base_path = vim.fn.expand("~/Programing/fips-web-client")
	local poker_dirs = {}

	-- Add swf-poker directory
	local swf_poker = "apps/ps/web-client/packages/swf-poker"
	if vim.fn.isdirectory(base_path .. "/" .. swf_poker) == 1 then
		table.insert(poker_dirs, swf_poker)
	end

	-- Find poker-* directories
	local widget_poker_dirs = vim.fn.glob(base_path .. "/apps/ps/web-client/widgets/poker-*", false, true)
	for _, dir in ipairs(widget_poker_dirs) do
		if vim.fn.isdirectory(dir) == 1 then
			-- Make path relative to cwd
			local rel_path = dir:gsub(base_path .. "/", "")
			table.insert(poker_dirs, rel_path)
		end
	end

	require("snacks").picker.grep({
		cwd = base_path,
		dirs = poker_dirs,
		prompt = "Search in all poker > ",
	})
end, { desc = "Search in Poker Directories" })

map("n", "<leader>sfap", function()
	-- First find the actual poker directories
	local base_path = vim.fn.expand("~/Programing/fips-web-client")
	local poker_dirs = {}

	-- Add swf-poker directory
	-- local swf_poker = "apps/ps/web-client/packages/swf-poker"
	-- if vim.fn.isdirectory(base_path .. "/" .. swf_poker) == 1 then
	--   table.insert(poker_dirs, swf_poker)
	-- end

	-- Find poker-* directories
	local widget_poker_dirs = vim.fn.glob(base_path .. "/apps/ps/web-client/widgets/poker-*", false, true)
	for _, dir in ipairs(widget_poker_dirs) do
		if vim.fn.isdirectory(dir) == 1 then
			-- Make path relative to cwd
			local rel_path = dir:gsub(base_path .. "/", "")
			table.insert(poker_dirs, rel_path)
		end
	end

	require("snacks").picker.files({
		cwd = base_path,
		dirs = poker_dirs,
		prompt = "Search Files in all poker > ",
		format = "file",
		show_empty = false,
	})
end, { desc = "Search Files in Poker Directories" })
