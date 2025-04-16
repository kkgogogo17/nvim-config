-- lua/plugins/modes.lua
return {
  "mvllow/modes.nvim",
  tag = "v0.2.1",
  config = function()
    require("modes").setup({
      colors = {
        copy = "#f5c359", -- Example color, keep as is
        delete = "#c75c6a", -- Example color, keep as is
        insert = "#78ccc5", -- Example color, keep as is
        visual = "#9745be", -- Example color, keep as is
        normal = "#FFA500", -- Orange color for normal mode
      },

      -- Set opacity for cursorline and number background
      line_opacity = 0.15,

      -- Enable cursor highlights
      set_cursor = true,

      -- Enable cursorline initially, and disable cursorline for inactive windows
      -- or ignored filetypes
      set_cursorline = true,

      -- Enable line number highlights to match cursorline
      set_number = true,

      -- Enable sign column highlights to match cursorline
      set_signcolumn = true,

      -- Disable modes highlights in specified filetypes
      -- Please PR commonly ignored filetypes
      ignore_filetypes = { "NvimTree", "TelescopePrompt" },
    })
  end,
}
