local g          = vim.g
local o          = vim.o
local opt        = vim.opt
local A          = vim.api

o.compatible     = false
o.backspace      = 'eol,indent,start'
o.ruler          = true
o.termguicolors  = true
o.t_Co           = 256
o.timeoutlen     = 0
o.scrolloff      = 5
o.number         = true
o.numberwidth    = 2
o.relativenumber = true
o.signcolumn     = 'yes'
o.cursorline     = true
o.expandtab      = true
o.smarttab       = true
o.cindent        = true
o.autoindent     = true
o.wrap           = true
o.textwidth      = 300
o.tabstop        = 4
o.shiftwidth     = 4
o.softtabstop    = -1
o.formatoptions  = 'qrn1'
o.ignorecase     = true
o.smartcase      = true
o.backup         = false
o.writebackup    = false
o.undofile       = true
o.swapfile       = false
o.history        = 50
o.splitright     = true
o.splitbelow     = true
o.foldmethod     = 'expr'
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldlevelstart = 99
o.foldnestmax    = 3
o.foldminlines   = 1
opt.mouse        = "a"
g.mapleader      = ' '
g.maplocalleader = ' '

A.nvim_create_autocmd('TextYankPost', {
	group = num_au,
	callback = function()
		vim.highlight.on_yank({higroup = 'Visual', timeout = 2000})
	end
})

require('plugins')
