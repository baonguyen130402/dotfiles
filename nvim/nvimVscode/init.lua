local keymap = vim.keymap
local opt = vim.opt

-- <leader> key
vim.g.mapleader = " "

opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- repeat previous f, t, F or T movement
keymap.set("n", "'", ";")

-- paste without overwriting
keymap.set("v", "p", "P")

-- redo
keymap.set("n", "U", "<C-r>")

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- sync system clipboard
opt.clipboard = "unnamedplus"

-- search ignoring case
opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case character
opt.smartcase = true
