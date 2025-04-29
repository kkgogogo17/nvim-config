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

  { "projekt0n/github-nvim-theme", name = "github-theme" },
  { "rebelot/kanagawa.nvim", name = "kanagawa" },
  { "EdenEast/nightfox.nvim", name = "dayfox" },
  { "navarasu/onedark.nvim", name = "onedark" },
  { "mhartington/oceanic-next", name = "oceanic-next" },
  { "sainnhe/edge", name = "edge" },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },
  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "Yazeed1s/oh-lucy.nvim",
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        -- optional configuration here
      })
      require("bamboo").load()
    end,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = { sonaki },
  },
}
