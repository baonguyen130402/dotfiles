require "nvchad.options"

-- add yours here!

-- undercurl
vim.cmd [[let &t_Cs = "\e[4:3m"]]
vim.cmd [[let &t_Ce = "\e[4:0m"]]

-- best options
local options = {
  backup = false, -- create a backup files
  relativenumber = true, -- set relative numbered lines
  scrolloff = 10,
  tabstop = 2,
  shiftwidth = 2,
  cmdheight = 1, -- more space in the neovim command line for displaying massages
  numberwidth = 2, -- set number column width to 2 {defautl 4}
  fileencoding = "utf-8", -- the encoding written to a file
  smartcase = true, -- smart case
  smarttab = true, -- smart tab
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
