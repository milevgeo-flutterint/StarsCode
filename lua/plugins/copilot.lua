return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			model = "claude-sonnet-4",           -- AI model to usecop
			temperature = 0.1,           -- Lower = focused, higher = creative
			auto_insert_mode = true,     -- Enter insert mode when opening    },
			window = {
				layout = 'vertical',
				width = 0.25, -- Fixed width in columns
				border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
				title = '🤖 AI Assistant',
				zindex = 100, -- Ensure window stays on top
			},

			headers = {
				user = '👤 You',
				assistant = '🤖 Agent',
				tool = '🔧 Tool',
			},

			separator = '━━',
			auto_fold = true, -- Automatically folds non-assistant messages
		},
	}
}
