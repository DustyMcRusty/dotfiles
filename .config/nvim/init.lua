--Next colorscheme
	vim.cmd(":colorscheme elflord")
-- Options
	vim.g.colorscheme    = "blue"
	vim.g.mapleader      = " "
	vim.o.number         = true
	vim.o.relativenumber = true
	vim.o.smartindent    = true

-- Keybinds
	vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true })
	vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true })
	vim.api.nvim_set_keymap('n', '<Leader>n', ':bnext<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>p', ':bprevious<CR>', { noremap = true, silent = true })
	vim.api.nvim_set_keymap('n', '<Leader>sh', ':split<CR>', { noremap = true, silent = true  })
	vim.api.nvim_set_keymap('n', '<Leader>sv', ':vsplit<CR>', { noremap = true, silent = true  })
	vim.api.nvim_set_keymap('n', '<Leader>t', '<C-w>s<C-w>j:term<CR>', { noremap = true, silent = true  })

	vim.api.nvim_set_keymap('i', '<M-h>', '<left>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-j>', '<down>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-k>', '<up>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-l>', '<right>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-e>', '<End>', {noremap = true})
	vim.api.nvim_set_keymap('i', '<M-a>', '<Home>', {noremap = true})

-- Plugin Declarations

-- Plugin Configs

