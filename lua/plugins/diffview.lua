return {
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewOpen",
      "DiffviewClose",
      "DiffviewFileHistory",
      "DiffviewFocusFiles",
      "DiffviewToggleFiles",
      "DiffviewRefresh",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git Diff View" },
      { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Git Diff Close" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Git File History" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Git Branch History" },
    },
    opts = {
      enhanced_diff_hl = true,
      use_icons = true,
    },
  },
}
