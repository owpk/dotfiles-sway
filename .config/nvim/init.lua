vim.g.tokyonight_style = "night"
vim.g.tokyonight_transparent = true
vim.cmd[[colorscheme tokyonight]]

require('plugins')
-- CONFIGS
-- require('fzf-config')
require('autotag-config')
require('nvim-ts-autotag').setup({
  filetypes = { "html" , "xml", "javascriptreact", "typescriptreact", "tsx", "typescript.tsx" },
})
require("user.telescope")
require("user.lsp-inlayhints")
require("user.lsp")
require('user.treesitter')
require('user.dap')
require('user.copilot')
require('user.auto-session')
require('user.alpha')
require('user.illuminate')
require('user.notify')
require('user.toggleterm')
require('user.spectre')

require('cmp-config')
require('kommentary-config')
require('nerdtree-config')
-- SETUP
local so = vim.api.nvim_set_option

so('bk', false)
so('wb', false)
so('swf', false)
so('cot', 'menu,menuone,noselect')
so('clipboard', 'unnamedplus')
so('expandtab', true)
so('laststatus', 2)
so('shiftwidth', 2)
so('updatetime', 100)
so('ttimeoutlen', 10)

vim.o.sw = 2
vim.o.tabstop = 2
vim.o.sts = 0
vim.o.signcolumn = 'no'
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.number = true
-- vim.o.rnu = true

vim.call('matchadd', 'WarningMsg', "\\%81v", 3)

-- vimwiki
vim.api.nvim_set_var('vimwiki_list', { {
  path = '~/Documents/vimwiki',  
  -- syntax = 'markdown',
  -- ext = '.md'
} })
  
-- MAPPINGS
local sk = vim.api.nvim_set_keymap

sk('n', 'j', 'gj', { noremap = true, silent = true })
sk('n', 'k', 'gk', { noremap = true, silent = true })
sk('v', 'j', 'gj', { noremap = true, silent = true })
sk('v', 'k', 'gk', { noremap = true, silent = true })
sk('n', ',<space>', ':nohlsearch<CR>', { noremap = true, silent = true })
sk('n', '<C-H>', '<C-W>h', { noremap = false, silent = true })
sk('n', '<C-L>', '<C-W>l', { noremap = false, silent = true })
sk('n', '=', '<C-W>=', { noremap = false, silent = true })
sk('n', '+', '<C-W>+', { noremap = false, silent = true })
sk('n', '-', '<C-W>-', { noremap = false, silent = true })
sk('n', '<M-w>', ':bd!<CR>', { noremap = false, silent = true }) 

sk('', '<C-j>', '5j', { noremap = true, silent = true})
sk('', '<C-k>', '5k', { noremap = true, silent = true})

-- fzf
sk('n', ',t', ':Files<CR>', { noremap = true, silent = true })
sk('n', "'", ':Buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_var('fzf_preview_window', 'right:50%:bottom')

-- emmit
vim.api.nvim_set_var('user_emmet_leader_key', '<C-A>')

reload "user.lualine"
