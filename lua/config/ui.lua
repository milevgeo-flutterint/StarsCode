-- UI configuration and theming
local function setup_ui()
	-- Set colorscheme
	vim.cmd("colorscheme habamax")

	-- Enable true color support
	vim.opt.termguicolors = true

	-- Set transparent background if supported
	vim.cmd("highlight Normal guibg=NONE ctermbg=NONE")
	vim.cmd("highlight NonText guibg=NONE ctermbg=NONE")

	-- Custom highlight groups
	vim.cmd("highlight CursorLineNr guifg=#ff9900")
	vim.cmd("highlight LineNr guifg=#666666")

	-- Set up custom signs for diagnostics
	local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
	for type, icon in pairs(signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
	end

	-- Configure diagnostic visuals
	vim.diagnostic.config({
		virtual_text = {
			prefix = "●",
			spacing = 4,
		},
		signs = true,
		underline = true,
		update_in_insert = false,
		severity_sort = true,
	})
end

return {
	setup_ui = setup_ui,
}
