require "nvchad.mappings"

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local otps = { noremap = true, silent = true }

local discipline = require "configs.baonguyexn.discipline"
discipline.calmdown()

keymap.set("i", "jj", "<esc>", otps)
keymap.set("i", "jk", "<esc>", otps)

keymap.set("n", "<leader>qq", "<cmd>:qa!<cr>")
keymap.set("n", "<leader>wq", "<cmd>:wqa!<cr>")

-- lazyvim load
keymap.set("n", "<leader>lz", "<cmd>Lazy<cr>")

-- increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- delete a word/line backwards
keymap.set("n", "<C-w>", 'vb"_d')
keymap.set("n", "dl", "vb_d")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- split window
keymap.set("n", "ss", ":split<Return>", otps)
keymap.set("n", "sv", ":vsplit<Return>", otps)

-- show diagnostics
keymap.set("n", "K", function()
  vim.diagnostic.open_float()
end, otps)

-- run simulator device
keymap.set("n", "<leader>sm", "<cmd>:Telescope simulators run<cr>")

-- toggle telescope
keymap.set("n", "<leader>sf", function()
  require "configs.baonguyexn.telescope-mappings"
end)

-- vim-tmux-navigator
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<cr>")
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>")
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<cr>")
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>")

-- colorpicker minty.shades
keymap.set("n", "<leader>cs", function()
  require("minty.shades").open()
end)

-- colorpicker minty.huefy
keymap.set("n", "<leader>ch", function()
  require("minty.huefy").open()
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
