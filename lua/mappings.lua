require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Close all windows and exit from Neovim with <leader> and q
map("n", "<leader>q", ":qa!<CR>", { desc = "close all and exit" })

-- Git blame on current line
map("n", "<leader>gb", ":lua require('gitsigns').blame_line()<CR>", { desc = "git blame line" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
