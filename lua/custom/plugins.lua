local plugins = {
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({})
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		ft = {
			"html",
			"xml",
			"javascriptreact",
			"typescriptreact",
			"vue",
			"javascript",
			"typescript",
			"vue",
			"astro",
		},
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
	{
		"tpope/vim-fugitive",
		cmd = { "Git", "G" }, -- carga perezosa solo cuando uses :Git
		keys = {
			{ "<leader>gs", ":Git<CR>", desc = "Git status (fugitive)" },
			{ "<leader>gd", ":Gdiffsplit<CR>", desc = "Git diff (fugitive)" },
			{ "<leader>gc", ":Gcommit<CR>", desc = "Git commit (fugitive)" },
			{ "<leader>gp", ":Gpush<CR>", desc = "Git push (fugitive)" },
			{ "<leader>gl", ":Glog<CR>", desc = "Git log (fugitive)" },
		},
	},
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewClose" },
	},
	{
		"ThePrimeagen/harpoon",
		lazy = false, -- cargar al inicio para usarlo rápido
		config = function()
			require("harpoon").setup()

			vim.api.nvim_set_keymap(
				"n",
				"<leader>ha",
				':lua require("harpoon.mark").add_file()<CR>',
				{ desc = "Harpoon mark file", noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>hm",
				':lua require("harpoon.ui").toggle_quick_menu()<CR>',
				{ desc = "Harpoon quick menu", noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h1",
				':lua require("harpoon.ui").nav_file(1)<CR>',
				{ desc = "Harpoon nav file", noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h2",
				':lua require("harpoon.ui").nav_file(2)<CR>',
				{ desc = "Harpoon nav file", noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h3",
				':lua require("harpoon.ui").nav_file(3)<CR>',
				{ desc = "Harpoon nav file", noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h4",
				':lua require("harpoon.ui").nav_file(4)<CR>',
				{ desc = "Harpoon nav file", noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>hn",
				':lua require("harpoon.ui").nav_next()',
				{ desc = "Harpoon nav next file", noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>hp",
				':lua require("harpoon.ui").nav_prev()',
				{ desc = "Harpoon nav prev file", noremap = true, silent = true }
			)
		end,
	},
}

return plugins
