return {
  "linux-cultist/venv-selector.nvim",
  enabled = true,
  cmd = { "VenvSelect", "VenvSelectCached" },
  keys = {
    { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    { "<leader>cV", "<cmd>VenvSelectCached<cr>", desc = "Re-Select Last VirtualEnv" },
  },
  opts = {
    name = { ".venv", "venv", "env" },
    auto_refresh = true,
  },
}
