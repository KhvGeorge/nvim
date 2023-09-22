-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/gamge/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/gamge/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/gamge/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/gamge/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/gamge/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["awesome-vim-colorschemes"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/awesome-vim-colorschemes",
    url = "https://github.com/rafi/awesome-vim-colorschemes"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cellular-automaton.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/cellular-automaton.nvim",
    url = "https://github.com/eandrju/cellular-automaton.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  darcula = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/darcula",
    url = "https://github.com/doums/darcula"
  },
  ["fleetish-vim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/fleetish-vim",
    url = "https://github.com/krfl/fleetish-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  ["gruvbox.nvim"] = {
    config = { "\27LJ\2\nö\14\0\0\5\0]\0b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0=\4,\0035\4-\0=\4.\0035\4/\0=\0040\0035\0041\0=\0042\0035\0043\0=\0044\0035\0045\0=\0046\0035\0047\0=\0048\0035\0049\0=\4:\0035\4;\0=\4<\0035\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\4B\0035\4C\0=\4D\0035\4E\0=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\0035\4M\0=\4N\0035\4O\0=\4P\0035\4Q\0=\4R\0035\4S\0=\4T\0035\4U\0=\4V\0035\4W\0=\4X\3=\3Y\2B\0\2\0016\0Z\0009\0[\0009\0\\\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\14overrides\31@neorg.markup.inline_macro\1\0\1\tlink\17GruvboxGreen\19CocSemVariable\1\0\2\abg\f#0E1018\afg\5\16CocSemMacro\1\0\2\abg\f#0E1018\afg\5\18CocSemComment\1\0\2\abg\f#0E1018\afg\5\24CocSemTypeParameter\1\0\2\abg\f#0E1018\afg\5\21CocSemEnumMember\1\0\2\abg\f#0E1018\afg\5\18CocSemKeyword\1\0\2\abg\f#0E1018\afg\5\17CocSemStruct\1\0\1\tlink\18GruvboxYellow\17WilderAccent\1\0\2\abg\5\afg\f#f4468f\15WilderMenu\1\0\2\abg\5\afg\f#ebdbb2\20GruvboxBlueSign\1\0\2\abg\5\afg\f#83a598\19GruvboxRedSign\1\0\2\abg\5\afg\f#fb4934\21GruvboxGreenSign\1\0\2\abg\5\afg\f#b8bb26\20GruvboxAquaSign\1\0\2\abg\5\afg\f#8EC07C\22GruvboxOrangeSign\1\0\2\abg\5\afg\f#dfaf87\17CursorLineNr\1\0\2\abg\5\afg\f#fabd2f\17StatusLineNC\1\0\2\abg\f#3c3836\afg\f#0E1018\15StatusLine\1\0\2\abg\f#ffffff\afg\f#0E1018\rDiffText\1\0\4\abg\f#213352\tbold\2\afg\5\freverse\1\15DiffDelete\1\0\4\abg\f#442d30\tbold\2\afg\f#442d30\freverse\1\15DiffChange\1\0\4\abg\f#333841\tbold\2\afg\5\freverse\1\fDiffAdd\1\0\4\abg\f#2a4333\tbold\2\afg\5\freverse\1\15SignColumn\1\0\1\abg\f#fe8019\15FoldColumn\1\0\2\abg\f#0E1018\afg\f#fe8019\vFolded\1\0\3\abg\f#3c3836\afg\f#fe8019\vitalic\2\30DiagnosticVirtualTextWarn\1\0\1\afg\f#dfaf87\17CocPumDetail\1\0\1\afg\f#fe8019\19CocPumShortcut\1\0\1\afg\f#fe8019\17CocInlayHint\1\0\1\afg\f#ABB0B6\20CocWarningFloat\1\0\1\afg\f#dfaf87\16CocCodeLens\1\0\1\afg\f#878787\22CopilotSuggestion\1\0\1\afg\f#878787\14ContextVt\1\0\1\afg\f#878788\20@namespace.rust\1\0\1\tlink\fInclude\21@namespace.latex\1\0\1\tlink\fInclude\15@text.note\1\0\1\tlink\tTODO\27@storageclass.lifetime\1\0\1\tlink\16GruvboxAqua\22@constant.builtin\1\0\1\tlink\18GruvboxPurple\nMacro\1\0\1\tlink\18GruvboxPurple\vDefine\1\0\1\tlink\18GruvboxPurple\fComment\1\0\0\1\0\3\tbold\2\afg\f#81878f\vitalic\2\22palette_overrides\1\0\1\15dark0_hard\f#0E1018\1\0\1\rcontrast\thard\nsetup\fgruvbox\frequire\0" },
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "https://github.com/ellisonleao/gruvbox.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jayp0521/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  moonfly = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/moonfly",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/theprimeagen/refactoring.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-256noir"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-256noir",
    url = "https://github.com/andreasvc/vim-256noir"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/gamge/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gruvbox.nvim
time([[Config for gruvbox.nvim]], true)
try_loadstring("\27LJ\2\nö\14\0\0\5\0]\0b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0=\4,\0035\4-\0=\4.\0035\4/\0=\0040\0035\0041\0=\0042\0035\0043\0=\0044\0035\0045\0=\0046\0035\0047\0=\0048\0035\0049\0=\4:\0035\4;\0=\4<\0035\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\4B\0035\4C\0=\4D\0035\4E\0=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\0035\4M\0=\4N\0035\4O\0=\4P\0035\4Q\0=\4R\0035\4S\0=\4T\0035\4U\0=\4V\0035\4W\0=\4X\3=\3Y\2B\0\2\0016\0Z\0009\0[\0009\0\\\0'\2\1\0B\0\2\1K\0\1\0\16colorscheme\bcmd\bvim\14overrides\31@neorg.markup.inline_macro\1\0\1\tlink\17GruvboxGreen\19CocSemVariable\1\0\2\abg\f#0E1018\afg\5\16CocSemMacro\1\0\2\abg\f#0E1018\afg\5\18CocSemComment\1\0\2\abg\f#0E1018\afg\5\24CocSemTypeParameter\1\0\2\abg\f#0E1018\afg\5\21CocSemEnumMember\1\0\2\abg\f#0E1018\afg\5\18CocSemKeyword\1\0\2\abg\f#0E1018\afg\5\17CocSemStruct\1\0\1\tlink\18GruvboxYellow\17WilderAccent\1\0\2\abg\5\afg\f#f4468f\15WilderMenu\1\0\2\abg\5\afg\f#ebdbb2\20GruvboxBlueSign\1\0\2\abg\5\afg\f#83a598\19GruvboxRedSign\1\0\2\abg\5\afg\f#fb4934\21GruvboxGreenSign\1\0\2\abg\5\afg\f#b8bb26\20GruvboxAquaSign\1\0\2\abg\5\afg\f#8EC07C\22GruvboxOrangeSign\1\0\2\abg\5\afg\f#dfaf87\17CursorLineNr\1\0\2\abg\5\afg\f#fabd2f\17StatusLineNC\1\0\2\abg\f#3c3836\afg\f#0E1018\15StatusLine\1\0\2\abg\f#ffffff\afg\f#0E1018\rDiffText\1\0\4\abg\f#213352\tbold\2\afg\5\freverse\1\15DiffDelete\1\0\4\abg\f#442d30\tbold\2\afg\f#442d30\freverse\1\15DiffChange\1\0\4\abg\f#333841\tbold\2\afg\5\freverse\1\fDiffAdd\1\0\4\abg\f#2a4333\tbold\2\afg\5\freverse\1\15SignColumn\1\0\1\abg\f#fe8019\15FoldColumn\1\0\2\abg\f#0E1018\afg\f#fe8019\vFolded\1\0\3\abg\f#3c3836\afg\f#fe8019\vitalic\2\30DiagnosticVirtualTextWarn\1\0\1\afg\f#dfaf87\17CocPumDetail\1\0\1\afg\f#fe8019\19CocPumShortcut\1\0\1\afg\f#fe8019\17CocInlayHint\1\0\1\afg\f#ABB0B6\20CocWarningFloat\1\0\1\afg\f#dfaf87\16CocCodeLens\1\0\1\afg\f#878787\22CopilotSuggestion\1\0\1\afg\f#878787\14ContextVt\1\0\1\afg\f#878788\20@namespace.rust\1\0\1\tlink\fInclude\21@namespace.latex\1\0\1\tlink\fInclude\15@text.note\1\0\1\tlink\tTODO\27@storageclass.lifetime\1\0\1\tlink\16GruvboxAqua\22@constant.builtin\1\0\1\tlink\18GruvboxPurple\nMacro\1\0\1\tlink\18GruvboxPurple\vDefine\1\0\1\tlink\18GruvboxPurple\fComment\1\0\0\1\0\3\tbold\2\afg\f#81878f\vitalic\2\22palette_overrides\1\0\1\15dark0_hard\f#0E1018\1\0\1\rcontrast\thard\nsetup\fgruvbox\frequire\0", "config", "gruvbox.nvim")
time([[Config for gruvbox.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
