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
vim.o.listchars			 = "tab:> ,trail:-,eol:$"
vim.o.swapfile			 = false

vim.cmd('set cc=90')

-- akjsdhalkjsdhalksj kajdshlkajsdh alkjsdhaslkjdh klajdsh lkjasdhajksdl
-- Keybinds
vim.g.mapleader = ' '

vim.keymap.set('i', '<M-k>', '<Up>')
vim.keymap.set('i', '<M-j>', '<Down>')
vim.keymap.set('i', '<M-h>', '<Left>')
vim.keymap.set('i', '<M-l>', '<Right>')

vim.keymap.set('i', '<M-w>', 'wwi')
vim.keymap.set('i', '<M-e>', 'ea')
vim.keymap.set('i', '<M-b>', 'bi')
vim.keymap.set('i', '<M-E>', 'WWi')
vim.keymap.set('i', '<M-W>', 'Ea')
vim.keymap.set('i', '<M-B>', 'Bi')

vim.keymap.set('n', '<leader>O', ':tabnew<CR>:Oil<CR>')
vim.keymap.set('n', '<leader>o', ':Oil<CR>')


vim.keymap.set('n', '<leader>S', ':tabnew<CR>:terminal<CR>')
vim.keymap.set('n', '<leader>s', ':split<CR>:terminal<CR>:resize 12<CR>')

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>Q', ':qa<CR>')

vim.keymap.set('n', '<leader>m', ':Man<CR>')

vim.keymap.set('n', '<leader>b', ':DapToggleBreakpoint<CR>')

vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>ca', mc.matchAddCursor(1))

vim.keymap.set('n', '	', ':tabnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>')

vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

-- Plugins
vim.pack.add({
	{src = "https://github.com/neovim/nvim-lspconfig"},
	{src = "https://github.com/rafamadriz/friendly-snippets"},
	{src = "https://github.com/mason-org/mason.nvim"},
	{src = "https://github.com/stevearc/oil.nvim"},
	{src = "https://github.com/Saghen/blink.cmp"},
	{src = "https://github.com/norcalli/nvim-colorizer.lua", name="colorizer"},
	{src = "https://github.com/m4xshen/autoclose.nvim"},
	{src = "https://github.com/jake-stewart/multicursor.nvim",}
})

-- LSPs n shit
	vim.lsp.enable({ 
    "ada-language-server",
    "aiken",
    "air",
    "angular-language-server",
    "ansible-language-server",
    "antlers-language-server",
    "apex-language-server",
    "arduino-language-server",
    "asm-lsp",
    "ast-grep",
    "astro-language-server",
    "autotools-language-server",
    "awk-language-server",
    "azure-pipelines-language-server",
    "bacon-ls",
    "basedpyright",
    "bash-language-server",
    "basics-language-server",
    "bazelrc-lsp",
    "beancount-language-server",
    "bicep-lsp",
    "biome",
    "brighterscript",
    "bsl-language-server",
    "buf",
    "buf-language-server deprecated",
    "bzl",
    "c3-lsp",
    "cairo-language-server",
    "cds-lsp",
    "circleci-yaml-language-server",
    "circom-lsp",
    "clarinet",
    "clarity-lsp deprecated",
    "clojure-lsp",
    "cmake-language-server",
    "cobol-language-support",
    "codebook",
    "codeql",
    "coffeesense-language-server",
    "contextive",
    "copilot-language-server",
    "coq-lsp",
    "cql-language-server",
    "crystalline",
    "csharp-language-server",
    "cspell-lsp",
    "css-lsp",
    "css-variables-language-server",
    "cssmodules-language-server",
    "cucumber-language-server",
    "cuelsp",
    "cuepls deprecated",
    "custom-elements-languageserver",
    "cypher-language-server",
    "dcm",
    "deno",
    "dhall-lsp",
    "diagnostic-languageserver",
    "digestif",
    "django-template-lsp",
    "docker-compose-language-service",
    "docker-language-server",
    "dockerfile-language-server",
    "dot-language-server",
    "dprint",
    "drools-lsp",
    "earthlyls",
    "efm",
    "elixir-ls",
    "elm-language-server",
    "elp",
    "ember-language-server",
    "emmet-language-server",
    "emmet-ls",
    "emmylua_ls",
    "erg",
    "erg-language-server",
    "erlang-ls",
    "esbonio",
    "eslint-lsp",
    "expert",
    "facility-language-server",
    "fennel-language-server",
    "fennel-ls",
    "fish-lsp",
    "flux-lsp",
    "foam-language-server",
    "fortls",
    "fsautocomplete",
    "gh-actions-language-server",
    "ginko_ls",
    "gitlab-ci-ls",
    "glint",
    "glsl_analyzer",
    "glslls",
    "golangci-lint-langserver",
    "gopls",
    "gradle-language-server",
    "grammarly-languageserver",
    "graphql-language-service-cli",
    "groovy-language-server",
    "harper-ls",
    "haskell-language-server",
    "haxe-language-server",
    "hdl-checker",
    "helm-ls",
    "herb-language-server",
    "hoon-language-server",
    "html-lsp",
    "htmx-lsp",
    "hydra-lsp",
    "hyprls",
    "intelephense",
    "java-language-server",
    "jayvee-language-server",
    "jdtls",
    "jedi-language-server",
    "jinja-lsp",
    "jq-lsp",
    "json-lsp",
    "jsonld-lsp",
    "jsonnet-language-server",
    "julia-lsp",
    "just-lsp",
    "kcl",
    "kos-language-server",
    "kotlin-language-server",
    "kotlin-lsp",
    "language-server-bitbake",
    "laravel-ls",
    "lean-language-server",
    "lelwel",
    "lemminx",
    "lexical",
    "llm-ls",
    "ltex-ls",
    "ltex-ls-plus",
    "luau-lsp",
    "lwc-language-server",
    "m68k-lsp-server",
    "markdown-oxide",
    "marksman",
    "matlab-language-server",
    "mdx-analyzer",
    "mesonlsp",
    "metamath-zero-lsp",
    "millet",
    "motoko-lsp",
    "move-analyzer",
    "mutt-language-server",
    "neocmakelsp",
    "nextflow-language-server",
    "nextls",
    "nginx-language-server",
    "nickel-lang-lsp",
    "nil",
    "nimlangserver",
    "nimlsp",
    "nomicfoundation-solidity-language-server",
    "ntt",
    "nxls",
    "ocaml-lsp",
    "ols",
    "omnisharp",
    "omnisharp-mono",
    "opencl-language-server",
    "openedge-language-server",
    "openscad-language-server",
    "openscad-lsp",
    "oxlint",
    "pbls",
    "perlnavigator",
    "pest-language-server",
    "phpactor",
    "pico8-ls",
    "pkgbuild-language-server deprecated",
    "pkl-lsp",
    "postgrestools",
    "powershell-editor-services",
    "prisma-language-server",
    "prosemd-lsp",
    "protols",
    "psalm",
    "pug-lsp",
    "puppet-editor-services",
    "purescript-language-server",
    "pylyzer",
    "pyre",
    "pyrefly",
    "pyright",
    "python-lsp-server",
    "qmlls",
    "quick-lint-js",
    "r-languageserver",
    "raku-navigator",
    "reason-language-server",
    "regal",
    "regols",
    "remark-language-server",
    "rescript-language-server",
    "rescript-lsp deprecated",
    "rnix-lsp",
    "robotcode",
    "robotframework-lsp",
    "rome deprecated",
    "rubocop",
    "ruby-lsp",
    "ruff",
    "ruff-lsp deprecated",
    "rust-analyzer",
    "rust_hdl",
    "salt-lsp",
    "serve-d",
    "shopify-cli",
    "shopify-theme-check deprecated",
    "sith-language-server",
    "slang",
    "slint-lsp",
    "smithy-language-server",
    "snakeskin-cli",
    "snyk-ls",
    "solang",
    "solang-llvm",
    "solargraph",
    "solidity",
    "solidity-ls",
    "some-sass-language-server",
    "sorbet",
    "sourcery",
    "spectral-language-server",
    "spyglassmc-language-server",
    "sqlls",
    "sqls",
    "starlark-rust",
    "starpls",
    "steep",
    "stimulus-language-server",
    "stree",
    "stylelint-lsp",
    "superhtml",
    "svelte-language-server",
    "svlangserver",
    "svls",
    "swift-mesonlsp deprecated",
    "systemd-language-server",
    "tabby-agent",
    "tailwindcss-language-server",
    "taplo",
    "teal-language-server",
    "templ",
    "termux-language-server",
    "terraform-ls",
    "texlab",
    "textlsp",
    "tflint",
    "thriftls",
    "tilt",
    "tinymist",
    "tofu-ls",
    "tombi",
    "ts_query_ls",
    "tsp-server",
    "turtle-language-server",
    "twiggy-language-server",
    "ty",
    "typescript-language-server",
    "typos-lsp",
    "typst-lsp deprecated",
    "unocss-language-server",
    "v-analyzer",
    "vala-language-server",
    "vale-ls",
    "vectorcode",
    "verible",
    "veryl-ls",
    "vetur-vls",
    "vim-language-server",
    "visualforce-language-server",
    "vls",
    "vscode-solidity-server",
    "vscode-spring-boot-tools",
    "vtsls",
    "vue-language-server",
    "wasm-language-tools",
    "wgsl-analyzer",
    "wing",
    "yaml-language-server",
    "yls-yara",
    "zeek-language-server",
    "zk",
    "zls"
})

-- etc.
require("mason").setup()
require("autoclose").setup()
require("oil").setup({
	view_options = {
		watch_for_changes = true,
		show_hidden = true,
	},

	lsp_file_methods = {
	autosave_changes = true,
	},

	confirmation = {
		border = "single",
	},

	ssh = {
		border = "single",
	},
	
	
	float = {
		border = "single" 
	},
	
	keymaps_help = {
		border = "single" 
	},
})

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
