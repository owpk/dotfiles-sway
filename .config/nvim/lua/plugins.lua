return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use "nvim-lua/plenary.nvim"
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'

  -- LSP 
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'mfussenegger/nvim-jdtls'
  use "j-hui/fidget.nvim" -- Standalone UI for nvim-lsp progress.
  use "lvimuser/lsp-inlayhints.nvim" -- Partial implementation of LSP inlay hint.
  use "https://git.sr.ht/~whynothugo/lsp_lines.nvim" --  renders diagnostics using virtual lines
  use "jose-elias-alvarez/null-ls.nvim"

  use {
    "zbirenbaum/copilot.lua",
    event = { "VimEnter" },
    config = function()
      vim.defer_fn(function()
        require "user.copilot"
      end, 100)
    end,
  }
  -- use 'dense-analysis/ale'
  
  use "RRethy/vim-illuminate" --automatically highlighting other uses of the word 
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
	use '907th/vim-auto-save'

end)
