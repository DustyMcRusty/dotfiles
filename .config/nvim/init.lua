-- Settings
vim.o.cursorline     = true
vim.o.ignorecase     = true
vim.o.incsearch      = true
vim.o.mouse          = 'a'
vim.o.number         = true
vim.o.pumheight      = 10
vim.o.relativenumber = true
vim.o.shiftwidth     = 2
vim.o.showtabline    = 2
vim.o.signcolumn     = "auto"
vim.o.smartcase      = true
vim.o.splitbelow     = true
vim.o.splitright     = true
vim.o.tabstop        = 2
vim.o.termguicolors  = true
vim.o.title          = true
vim.o.winborder      = "single"
vim.o.wrap           = false

vim.cmd('colorscheme darkblue')
vim.cmd('set cc=90')

-- Keybinds
vim.g.mapleader = ' '

vim.keymap.set('i', '<M-i>', '<esc>')
vim.keymap.set('i', '<M-k>', '<Up>')
vim.keymap.set('i', '<M-j>', '<Down>')
vim.keymap.set('i', '<M-h>', '<Left>')
vim.keymap.set('i', '<M-l>', '<Right>')

vim.keymap.set('n', '<leader>T', ':tabnew<CR>:Oil<CR>')
vim.keymap.set('n', '<leader>t', ':Oil<CR>')

vim.keymap.set('n', '<leader>w', ':write<CR>')

vim.keymap.set('n', '<leader>ff', ':Pick files<CR>')
vim.keymap.set('n', '<leader>fb', ':Pick buffers<CR>')
vim.keymap.set('n', '<leader>fh', ':Pick help<CR>')
vim.keymap.set('n', '<leader>fg', ':Pick grep<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.keymap.set('n', '	', ':tabNext<CR>')
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>')

-- Plugins
vim.pack.add({
	{src = "https://github.com/neovim/nvim-lspconfig"},
	{src = "https://github.com/rafamadriz/friendly-snippets"},
	{src = "https://github.com/nvim-tree/nvim-tree.lua"},
	{src = "https://github.com/mason-org/mason.nvim"},
	{src = "https://github.com/echasnovski/mini.pick"},
	{src = "https://github.com/stevearc/oil.nvim"},
	{src = "https://github.com/Saghen/blink.cmp"},
	{src = "https://github.com/norcalli/nvim-colorizer.lua", name="colorizer"},
})

-- LSPs n shit
	vim.lsp.enable({ 
	"lua-language-server",
	"clangd"
})



-- etc.
require("mason").setup()
require("mini.pick").setup()
require("nvim-tree").setup()
require("oil").setup()
require("colorizer").setup()

require("blink-cmp").setup({
  "saghen/blink.cmp",
  dependencies = "rafamadriz/friendly-snippets",
  opts = {
    keymap = { preset = "default" },
    sources = {
      default = {},
      per_filetype = {
        lua = { "buffer" },
      },
    },
  },
})

