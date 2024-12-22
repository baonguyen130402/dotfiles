local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  return
end

local opts = gitsigns.setup {
  signs = {
    add = { text = "┃" },
    change = { text = "┃" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "┆" },
  },
  signs_staged = {
    add = { text = "┃" },
    change = { text = "┃" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "┆" },
  },
  signs_staged_enable = true,
  signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
  numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
  linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
  word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
  watch_gitdir = {
    follow_files = true,
  },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  max_file_length = 40000, -- Disable if file is longer than this (in lines)
  preview_config = {
    -- Options passed to nvim_open_win
    border = "single",
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },
  on_attach = function()
    local gs = require "gitsigns"
    local keymap = vim.keymap

    -- Actions
    keymap.set("n", "<leader>hs", gs.stage_hunk)
    keymap.set("n", "<leader>hr", gs.reset_hunk)
    keymap.set("v", "<leader>hs", function()
      gs.stage_hunk { vim.fn.line ".", vim.fn.line "v" }
    end)
    keymap.set("v", "<leader>hr", function()
      gs.reset_hunk { vim.fn.line ".", vim.fn.line "v" }
    end)
    keymap.set("n", "<leader>hS", gs.stage_buffer)
    keymap.set("n", "<leader>hu", gs.undo_stage_hunk)
    keymap.set("n", "<leader>hR", gs.reset_buffer)
    keymap.set("n", "<leader>hp", gs.preview_hunk)
    keymap.set("n", "<leader>hb", function()
      gs.blame_line { full = true }
    end)
    keymap.set("n", "<leader>tb", gs.toggle_current_line_blame)
    keymap.set("n", "<leader>hd", gs.diffthis)
    keymap.set("n", "<leader>hD", function()
      gs.diffthis "~"
    end)
    keymap.set("n", "<leader>td", gs.toggle_deleted)
  end,
}

return opts
-- require("gitsigns").setup {
--         signs = {
--           add = { text = "┃" },
--           change = { text = "┃" },
--           delete = { text = "_" },
--           topdelete = { text = "‾" },
--           changedelete = { text = "~" },
--           untracked = { text = "┆" },
--         },
--         signs_staged = {
--           add = { text = "┃" },
--           change = { text = "┃" },
--           delete = { text = "_" },
--           topdelete = { text = "‾" },
--           changedelete = { text = "~" },
--           untracked = { text = "┆" },
--         },
--         signs_staged_enable = true,
--         signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
--         numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
--         linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
--         word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
--         watch_gitdir = {
--           follow_files = true,
--         },
--         auto_attach = true,
--         attach_to_untracked = false,
--         current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
--         current_line_blame_opts = {
--           virt_text = true,
--           virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
--           delay = 1000,
--           ignore_whitespace = false,
--           virt_text_priority = 100,
--           use_focus = true,
--         },
--         current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
--         sign_priority = 6,
--         update_debounce = 100,
--         status_formatter = nil, -- Use default
--         max_file_length = 40000, -- Disable if file is longer than this (in lines)
--         preview_config = {
--           -- Options passed to nvim_open_win
--           border = "single",
--           style = "minimal",
--           relative = "cursor",
--           row = 0,
--           col = 1,
--         },
--         on_attach = function(bufnr)
--           local gitsigns = require "gitsigns"
--
--           local function map(mode, l, r, opts)
--             opts = opts or {}
--             opts.buffer = bufnr
--             vim.keymap.set(mode, l, r, opts)
--           end
--
--           -- Navigation
--           map("n", "]c", function()
--             if vim.wo.diff then
--               vim.cmd.normal { "]c", bang = true }
--             else
--               gitsigns.nav_hunk "next"
--             end
--           end)
--
--           map("n", "[c", function()
--             if vim.wo.diff then
--               vim.cmd.normal { "[c", bang = true }
--             else
--               gitsigns.nav_hunk "prev"
--             end
--           end)
--
--           -- Actions
--           map("n", "<leader>hs", gitsigns.stage_hunk)
--           map("n", "<leader>hr", gitsigns.reset_hunk)
--           map("v", "<leader>hs", function()
--             gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "v" }
--           end)
--           map("v", "<leader>hr", function()
--             gitsigns.reset_hunk { vim.fn.line ".", vim.fn.line "v" }
--           end)
--           map("n", "<leader>hS", gitsigns.stage_buffer)
--           map("n", "<leader>hu", gitsigns.undo_stage_hunk)
--           map("n", "<leader>hR", gitsigns.reset_buffer)
--           map("n", "<leader>hp", gitsigns.preview_hunk)
--           map("n", "<leader>hb", function()
--             gitsigns.blame_line { full = true }
--           end)
--           map("n", "<leader>tb", gitsigns.toggle_current_line_blame)
--           map("n", "<leader>hd", gitsigns.diffthis)
--           map("n", "<leader>hD", function()
--             gitsigns.diffthis "~"
--           end)
--           map("n", "<leader>td", gitsigns.toggle_deleted)
--
--           -- Text object
--           map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
--         end,
--       }
