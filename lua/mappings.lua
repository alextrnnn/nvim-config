require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "jk", [[<C-\><C-n>]], opts)
vim.keymap.set("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

-- vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
-- vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], opts)
-- vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], opts)
-- vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], opts)
-- vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>w]], opts)

vim.api.nvim_set_keymap("n", "<leader>y", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>p", '"+p', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>p", '"+p', { noremap = true, silent = true })
vim.keymap.set("c", "<CR>", "<CR>:nohlsearch<CR>", { silent = true })

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

map("n", "<leader>n", "<Plug>(VM-Find-Under)", { desc = "Next occurrence" })
map("v", "<leader>n", "<Plug>(VM-Visual-Cursors)", { desc = "Multi cursor selection" })
