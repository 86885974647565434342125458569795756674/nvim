vim.g.mapleader = " "  
vim.api.nvim_set_keymap("n", "bh", ":bp<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "bl", ":bn<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "bd", ":BufferLinePickClose<cr>", { noremap = true, silent = true })
--comment
  --<leader>cc
  --<leader>cu
vim.keymap.set("n", "tt", ":NvimTreeToggle<cr>", { noremap = true, silent = true })
--<C-]> cd
