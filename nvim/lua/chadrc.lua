-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "solarized_osaka",

  transparency = true,

  hl_override = require "configs.baonguyexn.highlights",
}

M.ui = {
  statusline = {
    theme = "default", -- default/minimal/vscode/vscode_colored
    separator_style = "default",
  },
  cmp = {
    style = "default", -- atom/atom_colored/default/flat_dark/flat_light
    icons_left = true,
  },
}

return M
