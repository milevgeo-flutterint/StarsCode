return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			type = {
				enable = true,
			},
			view = {
				width = 60,
			},
			renderer = {
				group_empty = true,
			},
			filesystem = {
				follow_current_file = {
					enabled = true,
					leave_dirs_open = false,
				},
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				}
			},
			source_selector = {
				winbar = true,
				statusline = false,
			}
		})
	end
}
