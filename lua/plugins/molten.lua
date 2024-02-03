return {
	{
		"benlubas/molten-nvim",
		version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
		dependencies = { "3rd/image.nvim" },
		build = ":UpdateRemotePlugins",
		event = "VeryLazy",

		init = function()
			-- these are examples, not defaults. Please see the readme
			vim.g.molten_image_provider = "image.nvim"
			vim.g.molten_output_win_max_height = 20
			vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
			vim.keymap.set(
				"n",
				"<leader>me",
				":MoltenEvaluateOperator<CR>",
				{ silent = true, desc = "run operator selection" }
			)
			vim.keymap.set("n", "<leader>ml", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
			vim.keymap.set("n", "<leader>mr", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
			vim.keymap.set(
				"v",
				"<leader>mr",
				":<C-u>MoltenEvaluateVisual<CR>gv",
				{ silent = true, desc = "evaluate visual selection" }
			)
			vim.keymap.set("n", "<leader>md", ":MoltenDelete<CR>", { silent = true, desc = "molten delete cell" })
			vim.keymap.set("n", "<leader>mh", ":MoltenHideOutput<CR>", { silent = true, desc = "hide output" })
			vim.keymap.set(
				"n",
				"<leader>mo",
				":noautocmd MoltenEnterOutput<CR>",
				{ silent = true, desc = "show/enter output" }
			)
		end,
	},
	{
		-- see the image.nvim readme for more information about configuring this plugin
		"3rd/image.nvim",
		opts = {
			backend = "kitty", -- whatever backend you would like to use
			integrations = {
				markdown = {
					enabled = true,
					clear_in_insert_mode = false,
					download_remote_images = true,
					only_render_image_at_cursor = false,
					filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
				},
			},
			max_width = 100,
			max_height = 12,
			max_height_window_percentage = math.huge,
			max_width_window_percentage = math.huge,
			window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
			window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
		},
	},
}
