-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself

	use("wbthomason/packer.nvim")

	use("tomasiser/vim-code-dark")

	use("fenetikm/falcon")

	use("christoomey/vim-tmux-navigator")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
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

	use({
		"projekt0n/github-nvim-theme",
		config = function()
			require("github-theme").setup({
				-- ...
			})

			vim.cmd("colorscheme github_dark")
		end,
	})

	use("rockerBOO/boo-colorscheme-nvim")

	use("aktersnurra/no-clown-fiesta.nvim")

	use("embark-theme/vim")

	use("frenzyexists/aquarium-vim")

	use({ "rebelot/kanagawa.nvim" })
	use({ "sjl/badwolf" })

	--ysiw to surround
	use({ "tpope/vim-surround" })

	use({ "rafi/awesome-vim-colorschemes" })

	use({ "tpope/vim-commentary" })

	use({ "vim-airline/vim-airline" })

	use({ "Shatur/neovim-ayu" })

	use({ "doums/darcula" })

	use({ "romgrk/barbar.nvim" })

	use({ "sainnhe/sonokai" })

	use({ "sainnhe/edge" })

	use({ "sainnhe/everforest" })

	use({ "sainnhe/gruvbox-material" })

	use({ "catppuccin/nvim", as = "catppuccin" })

	-- If you are using Packer

	use("EdenEast/nightfox.nvim") -- Packer

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

	use("folke/tokyonight.nvim")

	use({ "ray-x/aurora" })

	use({
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "hard",
				palette_overrides = { dark0_hard = "#0E1018" },
				overrides = {
					-- Comment = {fg = "#626A73", italic = true, bold = true},
					-- #736B62,  #626273, #627273
					Comment = { fg = "#81878f", italic = true, bold = true },
					Define = { link = "GruvboxPurple" },
					Macro = { link = "GruvboxPurple" },
					["@constant.builtin"] = { link = "GruvboxPurple" },
					["@storageclass.lifetime"] = { link = "GruvboxAqua" },
					["@text.note"] = { link = "TODO" },
					["@namespace.latex"] = { link = "Include" },
					["@namespace.rust"] = { link = "Include" },
					ContextVt = { fg = "#878788" },
					CopilotSuggestion = { fg = "#878787" },
					CocCodeLens = { fg = "#878787" },
					CocWarningFloat = { fg = "#dfaf87" },
					CocInlayHint = { fg = "#ABB0B6" },
					CocPumShortcut = { fg = "#fe8019" },
					CocPumDetail = { fg = "#fe8019" },
					DiagnosticVirtualTextWarn = { fg = "#dfaf87" },
					-- fold
					Folded = { fg = "#fe8019", bg = "#3c3836", italic = true },
					FoldColumn = { fg = "#fe8019", bg = "#0E1018" },
					SignColumn = { bg = "#fe8019" },
					-- new git colors
					DiffAdd = { bold = true, reverse = false, fg = "", bg = "#2a4333" },
					DiffChange = { bold = true, reverse = false, fg = "", bg = "#333841" },
					DiffDelete = { bold = true, reverse = false, fg = "#442d30", bg = "#442d30" },
					DiffText = { bold = true, reverse = false, fg = "", bg = "#213352" },
					-- statusline
					StatusLine = { bg = "#ffffff", fg = "#0E1018" },
					StatusLineNC = { bg = "#3c3836", fg = "#0E1018" },
					CursorLineNr = { fg = "#fabd2f", bg = "" },
					GruvboxOrangeSign = { fg = "#dfaf87", bg = "" },
					GruvboxAquaSign = { fg = "#8EC07C", bg = "" },
					GruvboxGreenSign = { fg = "#b8bb26", bg = "" },
					GruvboxRedSign = { fg = "#fb4934", bg = "" },
					GruvboxBlueSign = { fg = "#83a598", bg = "" },
					WilderMenu = { fg = "#ebdbb2", bg = "" },
					WilderAccent = { fg = "#f4468f", bg = "" },
					-- coc semantic token
					CocSemStruct = { link = "GruvboxYellow" },
					CocSemKeyword = { fg = "", bg = "#0E1018" },
					CocSemEnumMember = { fg = "", bg = "#0E1018" },
					CocSemTypeParameter = { fg = "", bg = "#0E1018" },
					CocSemComment = { fg = "", bg = "#0E1018" },
					CocSemMacro = { fg = "", bg = "#0E1018" },
					CocSemVariable = { fg = "", bg = "#0E1018" },
					-- CocSemFunction = {link = "GruvboxGreen"},
					-- neorg
					["@neorg.markup.inline_macro"] = { link = "GruvboxGreen" },
				},
			})
			vim.cmd.colorscheme("gruvbox")
		end,
	})

	use({ "nyoom-engineering/oxocarbon.nvim" })

	use({ "bluz71/vim-moonfly-colors", as = "moonfly" })
	use({ "savq/melange-nvim" })

	use({ "jacoborus/tender.vim" })

	-- Lua

	use({
		"olivercederborg/poimandres.nvim",
		config = function()
			require("poimandres").setup({
				-- leave this setup function empty for default config
				-- or refer to the configuration section
				-- for configuration options
			})
		end,
	})

	use({
		"mcchrish/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		requires = "rktjmp/lush.nvim",
	})

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
		branch = "v1.x",
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

	use("folke/zen-mode.nvim")
	use("eandrju/cellular-automaton.nvim")
	use("laytan/cloak.nvim")
	use("kyazdani42/nvim-web-devicons")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
end)
