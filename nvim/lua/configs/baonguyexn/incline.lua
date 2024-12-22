local status_ok, incline = pcall(require, "incline")
if not status_ok then
  return
end

local opts = incline.setup {
  window = { margin = { vertical = 0, horizontal = 1 } },
  hide = {
    cursorline = true,
  },
  render = function(props)
    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
    if vim.bo[props.buf].modified then
      filename = "[+] " .. filename
    end

    local icon, color = require("nvim-web-devicons").get_icon_color(filename)
    return { { icon, guifg = color }, { " " }, { filename } }
  end,
}

return opts
