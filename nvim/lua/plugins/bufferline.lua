return 
{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
config = function()
	vim.opt.termguicolors = true,
	require("bufferline").setup{
        options = {
			mode = "buffers",
			themable = true,
			separator_style = "slant",
			indicator = {
				style = 'none',
			},	
		}
	}
end,
}
