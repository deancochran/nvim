require('base')
require('maps')
require('plugins')
require('colorscheme')
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
}
)

require("mason-lspconfig").setup()

require('lsp-setup').setup({

	servers = {
		['arduino-language-server'] = {},
		['vscode-css-language-server'] = {},
		['docker-langserver'] = {},
		['dot-language-server'] = {},
		['grammarly-languageserver'] = {},
		['vscode-html-language-server'] = {},
		['vscode-json-language-server'] = {},
		['ltex-ls'] = {},
		['ltex-cli'] = {},
		['lua-language-server'] = {
			diagnostics = {
				globals = { 'vim' }
			}
		},
		['marksman'] = {},
		['pyright'] = {},
		['pyright-langserver'] = {},
		['pylsp'] = {},
		['sql-language-server'] = {},
		['svelteserver'] = {},
		['tailwindcss-language-server'] = {},
		['typescript-language-server'] = {},
		['vim-language-server'] = {},
		['yaml-language-server'] = {},
	}
})
require 'nvim-treesitter.configs'.setup {
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = false },
}
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"



