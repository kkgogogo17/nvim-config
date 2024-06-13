return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  -- add catppuccin
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
  },

  {
    "rmehri01/onenord.nvim",
  },

  {
    "mvpopuk/inspired-github.vim",
  },

  {
    "Mofiqul/vscode.nvim",
  },

  {
    "navarasu/onedark.nvim",
    opts = {
      style = "light",
    },
  },
  {
    "tanvirtin/monokai.nvim",
  },

  {
    "rebelot/kanagawa.nvim",
    opts = {
      theme = "wave",
    },
  },
  {
    "ribru17/bamboo.nvim",
  },

  -- Configure LazyVim to load
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
  {
    "mvpopuk/inspired-github.vim",
  },

  {
    "Mofiqul/vscode.nvim",
  },

  {
    "navarasu/onedark.nvim",
    opts = {
      style = "warmer",
    },
  },

  -- Configure LazyVim to load
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
