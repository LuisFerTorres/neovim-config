local keymap = vim.keymap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Toggle highlight search

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable arrow keys

keymap.set({"n", "v"}, "<up>", "<nop>")
keymap.set({"n", "v"}, "<down>", "<nop>")
keymap.set({"n", "v"}, "<left>", "<nop>")
keymap.set({"n", "v"}, "<right>", "<nop>")

-- Move selection up / down

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center moving up / down

--vim.keymap.set("n", "<C-u>", "<C-u>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "8jzz")
keymap.set("n", "<C-u>", "8kzz")

-- Disable copying to register when deleting

keymap.set("n", "x", "\"_x");
keymap.set("n", "s", "\"_s");
