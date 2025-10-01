-- Autocommands configuration
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General settings
local general = augroup("General", { clear = true })

-- Highlight yanked text
autocmd("TextYankPost", {
	group = general,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 300 })
	end,
	desc = "Highlight yanked text",
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
	group = general,
	pattern = "*",
	command = ":%s/\\s\\+$//e",
	desc = "Remove trailing whitespace on save",
})

-- Auto resize splits when window is resized
autocmd("VimResized", {
	group = general,
	command = "tabdo wincmd =",
	desc = "Auto resize splits when window is resized",
})

-- Filetype-specific settings
local filetype_group = augroup("FileTypeSettings", { clear = true })

-- Automatically set indentation for different file types
autocmd("FileType", {
	group = filetype_group,
	pattern = { "python", "yaml" },
	command = "setlocal shiftwidth=4 tabstop=4",
	desc = "Set 4-space indentation for Python and YAML",
})

autocmd("FileType", {
	group = filetype_group,
	pattern = { "javascript", "typescript", "html", "css", "json" },
	command = "setlocal shiftwidth=2 tabstop=2",
	desc = "Set 2-space indentation for web technologies",
})

-- Enable spell checking for text files
autocmd("FileType", {
	group = filetype_group,
	pattern = { "markdown", "text", "gitcommit" },
	command = "setlocal spell",
	desc = "Enable spell checking for text files",
})

-- LSP and diagnostics group
local lsp_group = augroup("LSP", { clear = true })

-- Show line diagnostics automatically in hover window
autocmd("CursorHold", {
	group = lsp_group,
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
	desc = "Show diagnostics on cursor hold",
})

-- Format on save for certain filetypes
autocmd("BufWritePre", {
	group = lsp_group,
	pattern = { "*.lua", "*.py", "*.js", "*.ts", "*.json", "*.css", "*.html" },
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
	desc = "Format on save for supported filetypes",
})

-- UI and visual enhancements group
local ui_group = augroup("UI", { clear = true })

-- Automatically open NvimTree when opening a directory
autocmd("VimEnter", {
	group = ui_group,
	callback = function(data)
		-- buffer is a directory
		local directory = vim.fn.isdirectory(data.file) == 1

		if not directory then
			return
		end

		-- change to the directory
		vim.cmd.cd(data.file)

		-- open the tree
		require("nvim-tree.api").tree.open()
	end,
	desc = "Open file explorer when opening a directory",
})

-- Close NvimTree if it's the only window left
autocmd("BufEnter", {
	group = ui_group,
	callback = function()
		local api = require("nvim-tree.api")
		if vim.fn.winnr("$") == 1 and api.tree.is_tree_buf() then
			vim.cmd("quit")
		end
	end,
	desc = "Close file explorer if it's the only window",
})

-- Session management group
local session_group = augroup("Session", { clear = true })

-- Automatically save session on exit
autocmd("VimLeave", {
	group = session_group,
	callback = function()
		require("persistence").save()
	end,
	desc = "Save session on exit",
})
