local status_ok, bookmarks = pcall(require, "bookmarks")
if not status_ok then
  return
end

local opts = bookmarks.setup {
  -- sign_priority = 8,  --set bookmark sign priority to cover other sign
  save_file = vim.fn.expand "$HOME/.bookmarks", -- bookmarks save file path
  keywords = {
    ["@t"] = "☑️ ", -- mark annotation startswith @t ,signs this icon as `Todo`
    ["@w"] = "⚠️ ", -- mark annotation startswith @w ,signs this icon as `Warn`
    ["@f"] = "⛏ ", -- mark annotation startswith @f ,signs this icon as `Fix`
    ["@n"] = " ", -- mark annotation startswith @n ,signs this icon as `Note`
  },
  on_attach = function()
    local bm = require "bookmarks"
    local keymap = vim.keymap

    keymap.set("n", "mm", bm.bookmark_toggle) -- add or remove bookmark at current line
    keymap.set("n", "mi", bm.bookmark_ann) -- add or edit mark annotation at current line
    keymap.set("n", "mc", bm.bookmark_clean) -- clean all marks in local buffer
    keymap.set("n", "mn", bm.bookmark_next) -- jump to next mark in local buffer
    keymap.set("n", "mp", bm.bookmark_prev) -- jump to previous mark in local buffer
    keymap.set("n", "ml", bm.bookmark_list) -- show marked file list in quickfix window
    keymap.set("n", "mx", bm.bookmark_clear_all) -- removes all bookmarks
  end,
}

return opts
