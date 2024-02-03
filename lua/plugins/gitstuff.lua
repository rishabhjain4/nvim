return {
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
	},
	{
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",

		config = function()
			require("gitsigns").setup()
			vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<CR>", { silent = true })
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { silent = true })
			vim.keymap.set("n", "<leader>gl", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })
		end,
	},
	{
		"topaxi/gh-actions.nvim",
		event = "VeryLazy",

		cmd = "GhActions",
		keys = {
			{ "<leader>gh", "<cmd>GhActions<cr>", desc = "Open Github Actions" },
		},
		-- optional, you can also install and use `yq` instead.
		--[[ build = "make", ]]
		dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
		opts = {},
		config = function(_, opts)
			require("gh-actions").setup(opts)
		end,
	},
}
