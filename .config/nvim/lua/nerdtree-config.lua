-- MAPPINGS
vim.api.nvim_set_keymap('n', '<C-n>', 'g:NERDTree.IsOpen() ? ":NERDTreeClose<CR>" : bufexists(expand(\'%\')) ? ":NERDTreeFind<CR>" : ":NERDTree<CR>"', { noremap = true, silent = true, expr = true})
-- let NERDTreeShowHidden=1
-- let g:NERDTreeDirArrowExpandable = ''
-- let g:NERDTreeDirArrowCollapsible = ''
