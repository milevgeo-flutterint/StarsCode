local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

local general = augroup("General", { clear = true })

autocmd('TextYankPost', {
  group = general,
	desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 500 }
  end,
})

autocmd("BufEnter", {
	group = general,
	desc = "Disable New Line Comment",
	callback = function()
		vim.opt.formatoptions:remove { "c", "r", "o" }
	end,
})
