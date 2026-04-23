-- Colorscheme
	vim.cmd(":colorscheme borland")
	vim.g.BorlandStyle = "modern"

-- Options
	vim.g.mapleader      = " "
	vim.o.colorcolumn    = "90"
	vim.o.number         = true
	vim.o.relativenumber = true
	vim.o.smartindent    = true
	vim.o.wrap           = false

-- Keybinds
	vim.api.nvim_set_keymap('n', '<Leader>q', ':bdelete<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>Q', ':bdelete!<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>n', ':bnext<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>p', ':bprevious<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>e', ':Oil<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>fb', ':Pick buffers<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>ff', ':Pick files<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>fh', ':Pick help<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>t', '<C-w>s<C-w>j:term<CR>', { noremap = true, silent = true  })

	vim.api.nvim_set_keymap('i', '<M-h>', '<left>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-j>', '<down>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-k>', '<up>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-l>', '<right>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-e>', '<End>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-a>', '<Home>', {noremap = true})

	vim.api.nvim_set_keymap('v', '<', '<V', {noremap = true})
	vim.api.nvim_set_keymap('v', '>', '>V', {noremap = true})

-- Plugin Declarations
	vim.pack.add({
		{ src = 'https://github.com/L3MON4D3/LuaSnip' },
		{ src = 'https://github.com/saghen/blink.cmp' },
		{ src = 'https://github.com/saghen/blink.lib' },
		{ src = 'https://github.com/letorbi/vim-colors-modern-borland', name = 'borland-colors' },
		{ src = 'https://github.com/m4xshen/autoclose.nvim', name = 'autoclose' },
		{ src = 'https://github.com/mason-org/mason.nvim' },
		{ src = 'https://github.com/neovim/nvim-lspconfig' },
		{ src = 'https://github.com/nvim-mini/mini-git'},
		{ src = 'https://github.com/nvim-mini/mini.align'},
		{ src = 'https://github.com/nvim-mini/mini.diff'},
		{ src = 'https://github.com/nvim-mini/mini.move'},
		{ src = 'https://github.com/nvim-mini/mini.pick'},
		{ src = 'https://github.com/rafamadriz/friendly-snippets' },
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
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},
	})
	require("luasnip.loaders.from_vscode").lazy_load()
	require("autoclose").setup()
	require("mason").setup()
	require("mini.align").setup()
	require("mini.diff").setup()
	require("mini.git").setup()
	require("mini.move").setup()
	require("mini.pick").setup()
