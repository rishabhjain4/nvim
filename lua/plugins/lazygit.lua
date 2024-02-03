return {
	"kdheepak/lazygit.nvim",
	event = "VeryLazy",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
	end,
}
