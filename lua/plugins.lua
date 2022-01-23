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
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use 'tpope/vim-fugitive'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'

  use 'BurntSushi/ripgrep'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  use 'neovim/nvim-lspconfig'
  use 'folke/lsp-colors.nvim'
  use 'nanotee/nvim-lsp-basics'

  use 'mfussenegger/nvim-lint'
  use 'williamboman/nvim-lsp-installer'

  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'saadparwaiz1/cmp_luasnip'

  use {"catppuccin/nvim", as = "catppuccin" }

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

  use {
    'lewis6991/spellsitter.nvim',
    config = function()
      require('spellsitter').setup({enable = true})
    end
  }

  use "lukas-reineke/indent-blankline.nvim"
  use { 'kyazdani42/nvim-tree.lua', config = function() require'nvim-tree'.setup {} end }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use { 'tami5/lspsaga.nvim' }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'nvim-telescope/telescope-project.nvim'
  use {
    "nvim-telescope/telescope-frecency.nvim",
    config = function()
      require"telescope".load_extension("frecency")
    end,
    requires = {"tami5/sqlite.lua"}
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use 'jbyuki/nabla.nvim'

  use 'keng1ne/jmaps'
  use 'keng1ne/filetype.nvim'
end)
