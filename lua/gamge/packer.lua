-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself

	use("wbthomason/packer.nvim")
	use("Mofiqul/vscode.nvim")
	use("savq/melange-nvim")
	use("slugbyte/lackluster.nvim")
	use("kdheepak/monochrome.nvim")
	use("folke/snacks.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	-- new
	use("christoomey/vim-tmux-navigator")

	use({ "sainnhe/gruvbox-material" })

	use({ "windwp/nvim-autopairs" })

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"rose-pine/neovim",
		as = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	})

	-- nvim v0.7.2
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	use({ "rebelot/kanagawa.nvim" })
	use({ "sekke276/dark_flat.nvim" })

	--ysiw to surround
	use({ "tpope/vim-surround" })

	use({ "tpope/vim-commentary" })

	use({ "vim-airline/vim-airline" })

	use({ "romgrk/barbar.nvim" })

	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup({
				icons = false,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- use({ "bluz71/vim-moonfly-colors", as = "moonfly" })

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use("nvim-treesitter/playground")

	use("szw/vim-maximizer")

	use("theprimeagen/harpoon")

	use("lewis6991/gitsigns.nvim")

	use("theprimeagen/refactoring.nvim")

	use("mbbill/undotree")

	use("tpope/vim-fugitive")

	use("nvim-tree/nvim-tree.lua")

	use("nvim-treesitter/nvim-treesitter-context")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})

	use("eandrju/cellular-automaton.nvim")

	use("kyazdani42/nvim-web-devicons")

	use("jose-elias-alvarez/null-ls.nvim")

	use("jayp0521/mason-null-ls.nvim")
end)
