-- Key mappings configuration
local keymap = vim.keymap.set

-- Helper function for setting keymaps
local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	keymap(mode, lhs, rhs, options)
end

-- General keymaps
map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save" })
map("n", "<leader>x", "<cmd>x<CR>", { desc = "Save and quit" })

-- Clear search highlighting
map("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Better navigation between windows
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Plugin-specific keymaps
-- File explorer
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
map("n", "<leader>E", "<cmd>NvimTreeFindFile<CR>", { desc = "Reveal current file in explorer" })

-- Fuzzy finder
map("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>FzfLua help_tags<CR>", { desc = "Help tags" })

-- LSP keymaps
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Go to declaration" })
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "References" })
map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation" })
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover documentation" })
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol" })
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" })
map("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<CR>", { desc = "Format buffer" })

-- Diagnostics
map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "Previous diagnostic" })
map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "Next diagnostic" })
map("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Show diagnostic" })

-- Harpoon (file navigation)
map("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Harpoon add file" })
map("n", "<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Harpoon menu" })
map("n", "<C-1>", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "Harpoon file 1" })
map("n", "<C-2>", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "Harpoon file 2" })
map("n", "<C-3>", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "Harpoon file 3" })
map("n", "<C-4>", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "Harpoon file 4" })

-- Git
map("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open lazygit" })
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", { desc = "Git blame line" })
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Git diff" })

-- Buffer management
map("n", "<leader>bd", "<cmd>Bdelete<CR>", { desc = "Delete buffer" })
map("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })

-- Terminal
map("n", "<leader>tt", "<cmd>terminal<CR>", { desc = "Open terminal" })
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Dashboard
map("n", "<leader>db", "<cmd>Alpha<CR>", { desc = "Open dashboard" })

-- Session management
map("n", "<leader>ss", "<cmd>lua require('persistence').load()<CR>", { desc = "Restore session" })
map("n", "<leader>sl", "<cmd>lua require('persistence').load({ last = true })<CR>", { desc = "Restore last session" })
map("n", "<leader>sd", "<cmd>lua require('persistence').stop()<CR>", { desc = "Don't save current session" })
