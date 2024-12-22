local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local opts = mason.setup {
  ensure_installed = {
    -- lua stuff
    "stylua",
    "lua-language-server",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "eslint-lsp",
    "prettier",
    "tailwindcss-language-server",
    "typescript-language-server",

    -- python dev stuff
    -- "pyright",
    -- "black",
  },
}

return opts
