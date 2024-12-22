local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "tsx",
    "javascript",
    "typescript",

    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "stylua",
    "lua-language-server",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "eslint-lsp",
    "prettierd",
    "tailwindcss-language-server",
    "typescript-language-server",

    -- python dev stuff
    "pyright",
    "black",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}


return M
