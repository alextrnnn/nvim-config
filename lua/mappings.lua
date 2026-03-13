require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- map("t", "jk", [[<C-\><C-n>]], opts)
vim.keymap.set("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

map("n", "<leader>y", '"+y', opts)
map("v", "<leader>y", '"+y', opts)

map("n", "<leader>p", '"+p', opts)
map("v", "<leader>p", '"+p', opts)
map("c", "<CR>", "<CR>:nohlsearch<CR>", { silent = true })

vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")

map("n", "<C-e>", "<Plug>(VM-Find-Under)", opts)
map("v", "<C-e>", "<Plug>(VM-Visual-Cursors)", opts)
