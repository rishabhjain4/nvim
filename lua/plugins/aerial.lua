return {
	"stevearc/aerial.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("aerial").setup({
			backends = { "treesitter", "lsp", "markdown", "man" },
			filter_kind = false,
		})
		vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle<cr>", { desc = "Display Func/Var" })
	end,
}
