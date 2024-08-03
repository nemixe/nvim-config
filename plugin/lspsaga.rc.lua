local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {
  server_filetype_map = {
    typescript = 'typescript'
  },
  ui = {
    code_action = ''
  },
}

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "fd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'Q', '<cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', 'ge', '<cmd>Lspsaga finder ++normal<CR>', opts)
--vim.keymap.set('i', '<C-k>', '<cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '\\t', '<cmd>Lspsaga term_toggle<CR>', opts)
