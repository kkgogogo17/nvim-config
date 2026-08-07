-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Make background transparent so Ghostty's background-opacity/blur shows through
local function transparent_background()
  local groups = {
    "Normal",
    "NormalNC",
    "NonText",
    "EndOfBuffer",
    "LineNr",
    "SignColumn",
    "NormalFloat",
    "FloatBorder",
  }
  for _, group in ipairs(groups) do
    vim.api.nvim_set_hl(0, group, { bg = "NONE" })
  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("transparent_background", { clear = true }),
  callback = transparent_background,
})

-- Apply immediately in case autocmds.lua is loaded after colorscheme is set
transparent_background()
