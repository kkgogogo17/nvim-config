return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {},
  },

  {
    "kaiuri/nvim-juliana",
    lazy = false,
    opts = { --[=[ configuration --]=]
    },
    config = true,
  },

  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = true
      vim.cmd.colorscheme("sonokai")
    end,
  },

  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme("everforest")
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}
