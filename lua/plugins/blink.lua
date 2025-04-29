return {
  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets",
    {
      "saghen/blink.compat",
      optional = true,
      opts = {},
      version = not vim.g.lazyvim_blink_main and "*",
    },
  },
  opts = {
    completion = {},
  },
}
