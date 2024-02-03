return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup()
	end,
	vim.keymap.set("n", "<leader>nl", function()
		require("noice").cmd("last")
	end, { desc = "Show last Notification" }),

	vim.keymap.set("n", "<leader>nh", function()
		require("noice").cmd("history")
	end, { desc = "Show Notification History" }),

	vim.keymap.set("n", "<leader>nd", function()
		require("noice").cmd("dismiss")
	end, { desc = "Dimiss Notification" }),
}
