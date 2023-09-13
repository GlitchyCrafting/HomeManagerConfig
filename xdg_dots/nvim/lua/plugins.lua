local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
	{
		'nvim-lua/plenary.nvim',
		'kyazdani42/nvim-web-devicons',

		'neovim/nvim-lspconfig',
		'ray-x/lsp_signature.nvim',
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',

		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-cmdline',
		'f3fora/cmp-spell',
		'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'Saecki/crates.nvim',
        'onsails/lspkind.nvim',
        'paopaol/cmp-doxygen',
        'ray-x/cmp-treesitter',
        'KadoBOT/cmp-plugins',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'hrsh7th/cmp-calc',
        'FelipeLema/cmp-async-path',
        'chrisgrieser/cmp-nerdfont',
        'hrsh7th/cmp-emoji',
        'kdheepak/cmp-latex-symbols',
        'mtoohey31/cmp-fish',

		'numToStr/Comment.nvim',
		'folke/todo-comments.nvim',
		'f-person/git-blame.nvim',
		'nvim-treesitter/nvim-treesitter',
        'nvim-treesitter/nvim-treesitter-textobjects',
		'windwp/nvim-ts-autotag',
		'lukas-reineke/indent-blankline.nvim',
		'jghauser/mkdir.nvim',
		'mcauley-penney/tidy.nvim',
		'windwp/nvim-autopairs',
		{'AckslD/nvim-neoclip.lua', requires = {{'kkharji/sqlite.lua', module = 'sqlite'}}},

		{
			'https://github.com/GlitchyCrafting/glitchcandy-nvim.git',
			lazy = false,
			priority = 1000,
			config = function ()
				vim.cmd([[colorscheme glitchcandy]])
			end,
		},
		'ibhagwan/fzf-lua',
		'nvim-lualine/lualine.nvim',
        'arkav/lualine-lsp-progress',
		'uga-rosa/ccc.nvim',
		'folke/which-key.nvim',
		'folke/trouble.nvim',
		'elihunter173/dirbuf.nvim',
		'rmagatti/goto-preview',

	},
	{ ui = {border = "double"} }
)

require('configs.lsp')
require('configs.complete')
require('configs.util')
require('configs.ui')
