-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope (Fuzzy finder)
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme
  use { "catppuccin/nvim", as = "catppuccin" }
  vim.cmd('colorscheme catppuccin')

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- Harpoon
  use('theprimeagen/harpoon')

  -- Undotree
  use('mbbill/undotree')

  -- Fugitive
  use('tpope/vim-fugitive')

  -- LSP Zero
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- nvim tree
  use('nvim-tree/nvim-tree.lua')
  use('nvim-tree/nvim-web-devicons')

  -- vim tmux navigator
  use('christoomey/vim-tmux-navigator')

  -- Autopair
  use ('windwp/nvim-autopairs')

  -- Autotag
  use('windwp/nvim-ts-autotag')

  -- Neogit
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  -- Nvim Dap
  use { 'mfussenegger/nvim-dap' }

  -- Nvim Dap UI
  use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }

  -- Indent Blankline
  use { 'lukas-reineke/indent-blankline.nvim' }

  -- Feline Statusbar
  use { 'feline-nvim/feline.nvim' }

  -- GitSigns
  use { 'lewis6991/gitsigns.nvim' }

  -- Barbar
  use { 'romgrk/barbar.nvim' }

end)
