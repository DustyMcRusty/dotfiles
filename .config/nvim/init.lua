vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"
-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "ntree"
require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.o.cursorline 		 = true
vim.o.ignorecase 		 = true
vim.o.incsearch 	 	 = true
vim.o.mouse 				 = 'a'
vim.o.number 				 = true
vim.o.pumheight 		 = 10
vim.o.relativenumber = true
vim.o.shiftwidth 		 = 2
vim.o.showtabline 	 = 2
vim.o.signcolumn 		 = "auto"
vim.o.smartcase   	 = true
vim.o.smartindent 	 = true
vim.o.smartindent 	 = true
vim.o.splitbelow  	 = true
vim.o.splitright		 = true
vim.o.tabstop 			 = 2
vim.o.termguicolors  = true
vim.o.title 				 = true
vim.o.winborder 		 = "shadow"
vim.o.wrap 					 = false

require("nvim-tree").setup()
