vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

-- Centra la pantalla al moverse por paragrafos
keymap.set("n", "{", "{zz")
keymap.set("n", "}", "}zz")

-- Centra la pantalla al hacer half-page up down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Centra la pantalla al navegar busqueda
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")

-- Centra la pantalla al moverse
keymap.set("n", "j", "jzz")
keymap.set("n", "k", "kzz")

-- cuando se borra con x no se copia al registro
keymap.set("n", "x", '"_x')

-- Cmd + a como para seleccionar todo el documento
keymap.set("n", "<C-a>", "ggVG") 
