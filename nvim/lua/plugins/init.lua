local overrides = require "configs.baonguyexn.overrides"

return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "williamboman/mason.nvim",
    -- opts = overrides.mason,
    config = function()
      require "configs.baonguyexn.mason"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "rcarriga/nvim-notify",
    config = function()
      require "configs.baonguyexn.notify"
    end,
    event = "VeryLazy",
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },

  -- This plugin look like wider, but better
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      require "configs.baonguyexn.noice"
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  -- Separate close tag automactically
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    config = function()
      require "configs.baonguyexn.autotag"
    end,
  },

  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      require "configs.baonguyexn.incline"
    end,
  },

  -- disable flash
  {
    "folke/flash.nvim",
    enabled = false,
  },

  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },
  },

  -- nvim-surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
  },

  -- presence on discord
  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function()
      require "configs.baonguyexn.neocord"
    end,
  },

  {
    "tomasky/bookmarks.nvim",
    event = "VimEnter",
    config = function()
      require "configs.baonguyexn.bookmarks"
    end,
  },

  {
    "dimaportenko/telescope-simulators.nvim",
    config = function()
      require "configs.baonguyexn.simulators"
    end,
  },

  {
    "wojciech-kulik/xcodebuild.nvim",
    config = function()
      require "configs.baonguyexn.xcodebuild"
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "configs.baonguyexn.gitsigns"
    end,
  },
}
