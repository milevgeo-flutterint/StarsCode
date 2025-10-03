return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			dashboard = {
				preset = {
					header = [[
            #######################################            
         #####  ###############  ##############  ######        
      ####  ##################   ##################  ####      
     ##  ###################       ###################  ##     
   ### ###################           ################### ###   
  ### ###################      #      ################### ###  
 ##  ##################       ###       ################### ## 
### #################        #####        ################# ###
## #################   #################   ################# ##
## ###############      ###############     ###############  ##
#  ##############         ###########        ##############   #
#  #############           ## PSN ##          ##############  #
## #############          ###########          ############# ##
## #############          ####   ####          ############# ##
### ############         ###       ###         ############ ###
 ##  ############            ## ##             ############ ## 
  ### ############          ########         ############ ###  
   ### #############     ###### ######     ############# ###   
     ##  #####################   #####################  ###    
      ####  #################     ################## ####      
        ######  ############       ############  ######        
            #######################################            
                    ]],
				},
				enabled = true,
				sections = {
					{ section = "header" },
					{ icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
					{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
					{ icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
					{ section = "startup" },
				},
			},
			input = { enabled = false },
		},
		config = function(_, opts)
			require("snacks").setup(opts)

			vim.keymap.set("n", "<leader>db", function()
				require("snacks").dashboard.open()
			end)

			-- Auto-open dashboard on startup
			vim.api.nvim_create_autocmd("VimEnter", {
				callback = function()
					if vim.fn.argc() == 0 then
						vim.schedule(function()
							require("snacks").dashboard.setup()
						end)
					end
				end,
			})
		end,
	},
}
