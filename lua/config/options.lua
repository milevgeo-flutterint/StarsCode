local opt = vim.opt

vim.opt.winbar = "%=%m %f"
vim.g.snacks_animate = false

-- General settings
opt.mouse = "a" -- Enable mouse support
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.swapfile = false -- Disable swap files
opt.undofile = true
opt.backup = false -- Disable backup files
opt.writebackup = false -- Disable backup before write
opt.undofile = true -- Enable persistent undo
opt.updatetime = 250 -- Faster completion (4000ms default)
opt.timeoutlen = 300 -- Time to wait for mapped sequence

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Visual settings
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.number = true
opt.cursorline = true
opt.relativenumber = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.autoindent = true
opt.wrap = false
opt.smartindent = true

-- File encoding
opt.fileencoding = "utf-8" -- File encoding

-- Performance
opt.lazyredraw = false -- Don't redraw while executing macros
opt.ttyfast = true -- Faster terminal connection

-- Folding
opt.foldmethod = "expr" -- Use treesitter for folding
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false -- Don't fold by default

-- Split panes
opt.splitright = true
opt.splitbelow = true

-- GUI settings
if vim.g.neovide then
	opt.guifont = "0xProto Nerd Font:h12"
	vim.g.neovide_cursor_animation_length = 0.1
end

-- Disable some built-in plugins we don't need
local disabled_built_ins = {
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit",
}

for _, plugin in pairs(disabled_built_ins) do
	vim.g["loaded_" .. plugin] = 1
end

vim.diagnostic.config({
	-- virtual_lines = true,
	virtual_text = true,
})
