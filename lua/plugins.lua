-- his file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	} 
	use 'windwp/nvim-ts-autotag'
	use 'windwp/nvim-autopairs'

	use {
		"mcchrish/zenbones.nvim",
		requires = "rktjmp/lush.nvim"
	}

	use 'neovim/nvim-lspconfig'
	use 'folke/lsp-colors.nvim'
	use 'nanotee/nvim-lsp-basics'
	use 'mfussenegger/nvim-lint'
	use 'williamboman/nvim-lsp-installer'

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'SirVer/ultisnips'
	use 'quangnguyen30192/cmp-nvim-ultisnips'

	use {
		'blackCauldron7/surround.nvim',
		config = function()
			require"surround".setup {mappings_style = 'surround'}
		end
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'kyazdani42/nvim-web-devicons'
	use {
		'lewis6991/spellsitter.nvim',
		config = function()
			require('spellsitter').setup()
		end
	}
	use({
		"NTBBloodbath/galaxyline.nvim",
		-- your statusline
		config = function()
			require('galaxyline.themes.eviline')
		end
	})

	use "lukas-reineke/indent-blankline.nvim" 
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require'nvim-tree'.setup {} end
	}
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	use 'LionC/nest.nvim' 
end)
