-- Main Neovim configuration entry point
-- Load core configuration modules in proper order

-- Set leader keys early
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load configuration modules
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Initialize lazy.nvim plugin manager
require("config.lazy")

-- Load additional configurations after plugins
require("config.ui").setup_ui()

-- Load LSP and other plugin configurations after UI
vim.defer_fn(function()
	require("config.lsp")
end, 0)
