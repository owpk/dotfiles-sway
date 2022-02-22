return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'

  use 'dense-analysis/ale'
  
  use {
    'junegunn/fzf',
    requires = { 'junegunn/fzf.vim' }
  }

  use 'tpope/vim-fugitive'

  use 'mattn/emmet-vim'

  use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-ts-autotag'
  use 'b3nj5m1n/kommentary'
  use 'tpope/vim-surround'
  use 'digitaltoad/vim-pug'
  use 'arnamak/stay-centered.nvim'

  -- javascript
  -- use 'pangloss/vim-javascript'
  -- use 'peitalin/vim-jsx-typescript'
  -- use 'MaxMEllon/vim-jsx-pretty'

  --colorschemes
  use 'folke/tokyonight.nvim'
  use 'jaredgorski/spacecamp'
  use({
    'catppuccin/nvim',
    as = "catppuccin"
  })
  use 'NLKNguyen/papercolor-theme'

  --haskell???
  use 'neovimhaskell/haskell-vim'

	-- vim-plug
	use 'preservim/nerdtree'
  use 'ryanoasis/vim-devicons'

end)
