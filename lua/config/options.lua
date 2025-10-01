-- Core Neovim options and settings
local opt = vim.opt

-- General settings
opt.mouse = "a" -- Enable mouse support
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.swapfile = false -- Disable swap files
opt.backup = false -- Disable backup files
opt.writebackup = false -- Disable backup before write
opt.undofile = true -- Enable persistent undo
opt.updatetime = 250 -- Faster completion (4000ms default)
opt.timeoutlen = 300 -- Time to wait for mapped sequence

-- Visual settings
opt.termguicolors = true -- Enable 24-bit RGB colors
opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.cursorline = true -- Highlight current line
opt.signcolumn = "yes" -- Always show sign column
opt.wrap = false -- Disable line wrapping
opt.scrolloff = 8 -- Keep 8 lines visible above/below cursor
opt.sidescrolloff = 8 -- Keep 8 columns visible left/right of cursor
opt.colorcolumn = "80" -- Show column guide at 80 characters

-- Indentation
opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 2 -- Size of an indent
opt.tabstop = 2 -- Number of spaces tabs count for
opt.smartindent = true -- Insert indents automatically
opt.autoindent = true -- Copy indent from current line

-- Search settings
opt.ignorecase = true -- Ignore case in search patterns
opt.smartcase = true -- Override ignorecase if search contains capitals
opt.hlsearch = false -- Don't highlight search results
opt.incsearch = true -- Show search matches as you type

-- Split settings
opt.splitbelow = true -- New horizontal splits below current
opt.splitright = true -- New vertical splits to right of current

-- Completion settings
opt.completeopt = { "menu", "menuone", "noselect" } -- Better completion experience
opt.pumheight = 10 -- Maximum number of completion items

-- File encoding
opt.fileencoding = "utf-8" -- File encoding

-- Performance
opt.lazyredraw = false -- Don't redraw while executing macros
opt.ttyfast = true -- Faster terminal connection

-- Folding
opt.foldmethod = "expr" -- Use treesitter for folding
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false -- Don't fold by default

-- GUI settings
if vim.g.neovide then
	opt.guifont = "FiraCode Nerd Font:h12"
	vim.g.neovide_transparency = 0.9
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
