require("rose-pine").setup({
	disable_background = true,
	disable_float_background = true,
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
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	term_colors = true,
	transparent_background = true,
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

function ColorMyPencils(color)
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
