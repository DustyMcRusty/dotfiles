-- Per language options
	local filetype   =  vim.bo.filetype
	if filetype == "html" or "css" then
		vim.o.tabstop    =  4
		vim.o.shiftwidth =  4
	end

-- General options
	vim.g.mapleader      = " "
	vim.o.colorcolumn    = "80"
	vim.o.number         = true
	vim.o.shm			 = "I"
	vim.o.relativenumber = true
	vim.o.smartindent    = true
	vim.o.wrap           = true

-- Keybinds

	-- LSP utilities
	vim.keymap.set('n', 'gd',         vim.lsp.buf.definition,      { noremap = true, silent = true })
	vim.keymap.set('n', 'gD',         vim.lsp.buf.declaration,     {noremap = true})
	vim.keymap.set('n', 'gi',         vim.lsp.buf.implementation,  {noremap = true})
	vim.keymap.set('n', 'gr',         vim.lsp.buf.references,      {noremap = true})
	vim.keymap.set('n', '<Leader>D',  vim.lsp.buf.type_definition, {noremap = true})
	vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action,     {noremap = true})
	vim.keymap.set('n', '<Leader>ld', vim.diagnostic.open_float,   { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>le', ':lsp enable<CR>',           { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>ls', ':lsp disable<CR>',          { noremap = true, silent = true })

	-- Insert mode movement (vim philosophy my ass)
	vim.keymap.set('i', '<M-h>', '<left>',        {noremap = true})
	vim.keymap.set('i', '<M-j>', '<down>',        {noremap = true})
	vim.keymap.set('i', '<M-k>', '<up>',          {noremap = true})
	vim.keymap.set('i', '<M-l>', '<right>',       {noremap = true})
	vim.keymap.set('i', '<M-H>', '<C-o>_',        {noremap = true})
	vim.keymap.set('i', '<M-J>', '<C-o>}',        {noremap = true})
	vim.keymap.set('i', '<M-K>', '<C-o>{',        {noremap = true})
	vim.keymap.set('i', '<M-L>', '<End>',         {noremap = true})
	vim.keymap.set('i', '<M-w>', '<C-o>w',        {noremap = true})
	vim.keymap.set('i', '<M-b>', '<C-o>b',        {noremap = true})
	vim.keymap.set('i', '<M-e>', '<C-o>e<right>', {noremap = true})
	vim.keymap.set('i', '<M-W>', '<C-o>W',        {noremap = true})
	vim.keymap.set('i', '<M-B>', '<C-o>B',        {noremap = true})
	vim.keymap.set('i', '<M-E>', '<C-o>E<right>', {noremap = true})

	vim.keymap.set('c', '<M-h>', '<left>',  {noremap = true})
	vim.keymap.set('c', '<M-j>', '<down>',  {noremap = true})
	vim.keymap.set('c', '<M-k>', '<up>',    {noremap = true})
	vim.keymap.set('c', '<M-l>', '<right>', {noremap = true})
	vim.keymap.set('c', '<M-b>', '<C-left>',  {noremap = true})
	vim.keymap.set('c', '<M-e>', '<C-right>',  {noremap = true})
	vim.keymap.set('c', '<M-H>', '<Home>',  {noremap = true})
	vim.keymap.set('c', '<M-L>', '<End>',   {noremap = true})

	-- Plugin stuff (+ a few non-plugin bindings)
	vim.keymap.set('n', '<Leader>Q',   ':bdelete!<CR>',        { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>ef',   ':Oil<CR>',            { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>et',   ':term<CR>',           { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>fb',  ':Pick buffers<CR>',    { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>ff',  ':Pick files<CR>',      { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>fg',  ':Pick grep<CR>',       { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>fG',  ':Pick grep_live<CR>',  { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>fh',  ':Pick help<CR>',       { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>n',   ':bnext<CR>',           { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>p',   ':bprevious<CR>',       { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>q',   ':bdelete<CR>',         { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>w',   ':write<CR>',           { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>r',   ':source $MYVIMRC<CR>', { noremap = true, silent = true })
	vim.keymap.set('n', '<Leader>tc', ':CsvViewToggle<CR>',    { noremap = true, silent = true })

-- Plugin Declarations
	vim.pack.add({
		{ src = 'https://github.com/L3MON4D3/LuaSnip'},
		{ src = 'https://github.com/letorbi/vim-colors-modern-borland'},
		{ src = 'https://github.com/alec-gibson/nvim-tetris' },
		{ src = 'https://github.com/folke/which-key.nvim' },
		{ src = 'https://github.com/gbprod/substitute.nvim' },
		{ src = 'https://github.com/hat0uma/csvview.nvim' },
		{ src = 'https://github.com/m4xshen/autoclose.nvim', name = 'autoclose' },
		{ src = 'https://github.com/mason-org/mason.nvim' },
		{ src = 'https://github.com/mluders/comfy-line-numbers.nvim' },
		{ src = 'https://github.com/necrom4/convy.nvim' },
		{ src = 'https://github.com/neovim/nvim-lspconfig' },
		{ src = 'https://github.com/nvim-mini/mini-git'},
		{ src = 'https://github.com/nvim-mini/mini.align'},
		{ src = 'https://github.com/nvim-mini/mini.diff'},
		{ src = 'https://github.com/nvim-mini/mini.move'},
		{ src = 'https://github.com/nvim-mini/mini.pick'},
		{ src = 'https://github.com/nvim-mini/mini.tabline'},
		{ src = 'https://github.com/nvimdev/dashboard-nvim' },
		{ src = 'https://github.com/pechorin/any-jump.vim'},
		{ src = 'https://github.com/rafamadriz/friendly-snippets' },
		{ src = 'https://github.com/saghen/blink.cmp' },
		{ src = 'https://github.com/saghen/blink.lib' },
		{ src = 'https://github.com/stevearc/oil.nvim'},
	})

-- Plugin Configs
	require("oil").setup({
		view_options = {
			case_insensitive = true,
			show_hidden = true,
		},
		prompt_save_on_select_new_entry = true,
		skip_confirm_for_simple_edits = true,
	})
	require("blink.cmp").setup({
		keymap = { preset = 'default' },
		sources = {
			default = { 'path', 'snippets'},
		},
	})
	require("substitute").setup()
	vim.keymap.set('n', 's', require('substitute').operator, { noremap = true })
	vim.keymap.set('n', 'ss', require('substitute').line, { noremap = true })
	vim.keymap.set('n', 'S', require('substitute').eol, { noremap = true })
	vim.keymap.set('x', 's', require('substitute').visual, { noremap = true })

	require("autoclose").setup()
	require("comfy-line-numbers").setup()
	require("convy").setup()
	require("csvview").setup()
	require("dashboard").setup()
	require("luasnip.loaders.from_vscode").lazy_load()
	require("mason").setup()
	require("mini.align").setup()
	require("mini.diff").setup()
	require("mini.git").setup()
	require("mini.move").setup()
	require("mini.pick").setup()
	require("mini.tabline").setup()

-- LSPs
	vim.lsp.enable({
		"cssls",
		"html",
	})

-- Colorscheme
vim.cmd(":colorscheme modern-borland")
