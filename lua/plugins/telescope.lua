return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },

		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader><space>", builtin.find_files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Live Grep (root dir)" })
			vim.keymap.set("n", "<leader>ss", builtin.symbols, { desc = "Symbols" })
			vim.keymap.set("n", "<leader>,", builtin.buffers, { desc = "Buffers" })
			vim.keymap.set("n", "<leader>sG", "<cmd>Telescope live_grep search_dirs=.<CR>", { desc = "Grep(cwd)" })
		end,
	},
	{
		"nvim-telescope/telescope-symbols.nvim",
		config = function()
			-- vim.keymap.set("n", "<leader>fss", ":Telescope symbols<CR>")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
