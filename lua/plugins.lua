require 'packer'.startup(function(use)
	use { 'wbthomason/packer.nvim' } -- Packer can manage itself
	-- Remote Workspace
	use { 'tpope/vim-fugitive' } -- git commands in nvim
	-- Directory Search
	use { 'preservim/nerdtree' } -- directory tree manager
	-- syntax/produtivity/text adjustments
	use { 'nvim-treesitter/nvim-treesitter' } -- treesitter
	use { 'tpope/vim-surround' } -- shortcuts for adding quotes/brackets
	use { 'vim-syntastic/syntastic' } -- syntax highlights packagemanager
	-- LSP plugin
	-- use { 'neovim/nvim-lspconfig' }
	-- use { 'williamboman/mason.nvim' }
	-- use { 'williamboman/mason-lspconfig.nvim' }
	use {
		'junnplus/lsp-setup.nvim',
		requires = {
			'neovim/nvim-lspconfig',
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
		}
	}
	-- Colorschemes
	use { 'folke/tokyonight.nvim' }
	use { 'morhetz/gruvbox' }
	--Lualine
	use { 'nvim-lualine/lualine.nvim' }
	use { 'tpope/vim-commentary' }
	-- neo vim auto completions
	use {'neoclide/coc.nvim', branch = 'release'}
	-- https://www.youtube.com/watch?v=Ku-m7eEbWas
end)
