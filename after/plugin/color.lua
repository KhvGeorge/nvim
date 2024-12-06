require("rose-pine").setup({
	disable_background = true,
	disable_float_background = true,
	disable_italics = true,
})

require("catppuccin").setup({
	flavour = "macchiato", -- latte, frappe, macchiato, mocha
	term_colors = true,
	transparent_background = true,
	no_italic = true,
	no_bold = true,
})

function ColorMyPencils(color)
	-- vim.cmd("set background=dark")
	-- vim.g.gruvbox_material_background = "hard"
	-- vim.g.gruvbox_material_better_performance = 1
	color = color or "melange"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
