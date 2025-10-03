return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			model = "claude-sonnet-4", -- AI model to usecop
			temperature = 0.1, -- Lower = focused, higher = creative
			auto_insert_mode = true, -- Enter insert mode when opening    },
			sticky = {
				"#buffers:listed",
			},
			window = {
				layout = "vertical",
				width = 0.25, -- Fixed width in columns
				border = "rounded", -- 'single', 'double', 'rounded', 'solid'
				title = "🤖 AI Assistant",
				zindex = 100, -- Ensure window stays on top
			},
			headers = {
				user = "👤 You",
				assistant = "🤖 Agent",
				tool = "🔧 Tool",
			},
			separator = "━━",
			auto_fold = true, -- Automatically folds non-assistant messages
		},
		prompts = {
			StagedCommit = {
				prompt = [[
          Please generate a Pull Request Description for these staged changes following this template.

          Here are some instructions to follow:
          - For Projects involved, I want to add which projects are affected, for example if parent
          folder is poker-power-path-widget it should be PP, if the changed file is used the widget,
          - For the Locales, if there are translations involved, only then should check all locales, if no translations added, english is enough.

          Here is the template:

          # Description

          How to test

          **Feature Flag: [Add feature flag here if applicable, delete line otherwise!]**

          ## QA

          ### Projects involved

          (PP, SAG, MTT, etc)

          ### Regression Level

          Level 1 (Nothing was touched)
          Level 2 (Regression check)
          Level 3 (Deep regression)

          ## Locales

          All locales | Only english is enough
          (Do we need to make a PR build with all locales)

          ## Automated Coverage

          (What is already covered; what was added; why no tests)

          ## Visuals

          (Screen captures or Kaptures)

          ]] .. vim.fn.system("git diff --cached"),
			},
		},
	},
}
