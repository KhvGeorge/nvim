require("rose-pine").setup({
	disable_background = true,
	disable_float_background = true,
})

require("no-clown-fiesta").setup({
	transparent = false, -- Enable this to disable the bg color
	styles = {
		-- You can set any of the style values specified for `:h nvim_set_hl`
		comments = {},
		keywords = {},
		functions = {},
		variables = {},
		type = { bold = true },
		lsp = { underline = true },
	},
})

require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "storm", -- the theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- the theme is used when the background is set to light
	transparent = true, -- enable this to disable setting the background color
	terminal_colors = true, -- configure the colors used when opening a `:terminal` in neovim
	styles = {
		-- style to be applied to different syntax groups
		-- value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- background styles. can be "dark", "transparent" or "normal"
		sidebars = "transparent", -- style for sidebars, see below
		floats = "transparent", -- style for floating windows
	},
})

require("catppuccin").setup({
	flavour = "macchiato", -- latte, frappe, macchiato, mocha
	term_colors = true,
	transparent_background = false,
	no_italic = false,
	no_bold = false,
	styles = {
		comments = {},
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
	},
	color_overrides = {
		mocha = {
			base = "#000000",
			mantle = "#000000",
			crust = "#000000",
		},
	},
	highlight_overrides = {
		mocha = function(C)
			return {
				TabLineSel = { bg = C.pink },
				CmpBorder = { fg = C.surface2 },
				Pmenu = { bg = C.none },
				TelescopeBorder = { link = "FloatBorder" },
			}
		end,
	},
})

-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = false,
	italic = {
		strings = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "soft", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = true,
})

-- Default options
require("nightfox").setup({
	options = {
		-- Compiled file's destination location
		compile_path = vim.fn.stdpath("cache") .. "/nightfox",
		compile_file_suffix = "_compiled", -- Compiled file suffix
		transparent = false, -- Disable setting background
		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
		dim_inactive = false, -- Non focused panes set to alternative background
		module_default = true, -- Default enable value for modules
		colorblind = {
			enable = false, -- Enable colorblind support
			simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
			severity = {
				protan = 0, -- Severity [0,1] for protan (red)
				deutan = 0, -- Severity [0,1] for deutan (green)
				tritan = 0, -- Severity [0,1] for tritan (blue)
			},
		},
		styles = { -- Style to be applied to different syntax groups
			comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
			conditionals = "NONE",
			constants = "NONE",
			functions = "NONE",
			keywords = "NONE",
			numbers = "NONE",
			operators = "NONE",
			strings = "NONE",
			types = "NONE",
			variables = "NONE",
		},
		inverse = { -- Inverse highlight for different types
			match_paren = false,
			visual = false,
			search = false,
		},
		modules = { -- List of various plugins and additional options
			-- ...
		},
	},
	palettes = {},
	specs = {},
	groups = {},
})

function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
