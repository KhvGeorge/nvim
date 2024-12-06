-- snacks.lua
local Snacks = {}

-- Plugin setup
Snacks.setup = function()
	require("snacks").setup({
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		quickfile = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		styles = {
			notification = {
				wo = { wrap = true }, -- Wrap notifications
			},
		},
	})
end

-- Key mappings
Snacks.mappings = function()
	local map = vim.api.nvim_set_keymap
	local opts = { noremap = true, silent = true }

	-- Key mappings for Snacks
	map("n", "<leader>.", "<cmd>lua require('snacks').scratch()<CR>", opts)
	map("n", "<leader>S", "<cmd>lua require('snacks').scratch.select()<CR>", opts)
	map("n", "<leader>n", "<cmd>lua require('snacks').notifier.show_history()<CR>", opts)
	map("n", "<leader>bd", "<cmd>lua require('snacks').bufdelete()<CR>", opts)
	map("n", "<leader>cR", "<cmd>lua require('snacks').rename.rename_file()<CR>", opts)
	map("n", "<leader>gB", "<cmd>lua require('snacks').gitbrowse()<CR>", opts)
	map("n", "<leader>gb", "<cmd>lua require('snacks').git.blame_line()<CR>", opts)
	map("n", "<leader>gf", "<cmd>lua require('snacks').lazygit.log_file()<CR>", opts)
	map("n", "<leader>gg", "<cmd>lua require('snacks').lazygit()<CR>", opts)
	map("n", "<leader>gl", "<cmd>lua require('snacks').lazygit.log()<CR>", opts)
	map("n", "<leader>un", "<cmd>lua require('snacks').notifier.hide()<CR>", opts)
	map("n", "<c-/>", "<cmd>lua require('snacks').terminal()<CR>", opts)
	map("n", "<c-_>", "<cmd>lua require('snacks').terminal()<CR>", opts)
	map("n", "]]", "<cmd>lua require('snacks').words.jump(vim.v.count1)<CR>", opts)
	map("n", "[[", "<cmd>lua require('snacks').words.jump(-vim.v.count1)<CR>", opts)

	-- Neovim News
	map("n", "<leader>N", "<cmd>lua Snacks.show_news()<CR>", opts)
end

-- Neovim news
Snacks.show_news = function()
	require("snacks").win({
		file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
		width = 0.6,
		height = 0.6,
		wo = {
			spell = false,
			wrap = false,
			signcolumn = "yes",
			statuscolumn = " ",
			conceallevel = 3,
		},
	})
end

-- Initialize Snacks
Snacks.init = function()
	vim.api.nvim_create_autocmd("User", {
		pattern = "VeryLazy",
		callback = function()
			-- Debugging helpers
			_G.dd = function(...)
				require("snacks").debug.inspect(...)
			end
			_G.bt = function()
				require("snacks").debug.backtrace()
			end
			vim.print = _G.dd -- Override print

			-- Toggle mappings
			local toggle = require("snacks").toggle
			toggle.option("spell", { name = "Spelling" }):map("<leader>us")
			toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
			toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
			toggle.diagnostics():map("<leader>ud")
			toggle.line_number():map("<leader>ul")
			toggle
				.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
				:map("<leader>uc")
			toggle.treesitter():map("<leader>uT")
			toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
			toggle.inlay_hints():map("<leader>uh")
		end,
	})
end

-- Load everything
Snacks.load = function()
	Snacks.setup()
	Snacks.mappings()
	Snacks.init()
end

return Snacks
