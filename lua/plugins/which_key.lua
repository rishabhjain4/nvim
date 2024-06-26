return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.register({
			["<leader>x"] = { name = "+trouble" },
			["<leader>g"] = { name = "+git" },
			["<leader>e"] = { name = "+neotree" },
			["<leader>b"] = { name = "+buffers" },
			["<leader>d"] = { name = "+debug" },
			["<leader>n"] = { name = "+notification" },
		})
	end,
}
