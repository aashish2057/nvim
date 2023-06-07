local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- ALL THE PLUGIN MADNESS
-- need to do git plugins
local plugins = {
	-- plugin that many other plugins use
	"nvim-lua/plenary.nvim",
	-- Color Scheme when you get bored use kanagawa
	-- TODO; make transparent for catppuccin and kanagawa
	{
		"catppuccin/nvim",
		name = catppuccin,
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavor = mocha,
				transparent_background = true,
			})
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},

	{
		"rebelot/kanagawa.nvim",
	},

	{
		"AlexvZyl/nordic.nvim",
	}, -- allow for quickly add quotes parenthesis and others arround things "tpope/vim-surround", allow replacing words with what is copied "vim-scripts/ReplaceWithRegister",
	-- makes commenting easier
	"numToStr/Comment.nvim",

	-- file tree
	"nvim-tree/nvim-tree.lua",

	-- icons
	"nvim-tree/nvim-web-devicons",

	-- status line
	"nvim-lualine/lualine.nvim",

	-- fuzzy finding telescope
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },

	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",

	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- managing and installing LSP servers
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- configuring LSP servers
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{
		"glepnir/lspsaga.nvim",
		branch = "main",
	}, -- enhanced lsp uis
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion

	-- code formatting and linting
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},

	-- auto closing
	"windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
	"windwp/nvim-ts-autotag", -- autoclose tags

	-- Tabs (this was so needed)
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
	-- note taking (experimenting)

	-- tmux
	{
		"christoomey/vim-tmux-navigator",
		lazy = false,
	},

	-- coding time tracking
	{
		"wakatime/vim-wakatime",
		lazy = false,
	},

	-- lsp lines for better error messages
	"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
}
local opts = {}
require("lazy").setup(plugins, opts)
