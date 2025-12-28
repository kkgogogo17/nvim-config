-- lua/plugins/modes.lua
return {
  "mvllow/modes.nvim",
  tag = "v0.2.1",
  config = function()
    local modes = require("modes")
    local utils = require("modes.utils")

    modes.setup({
      colors = {
        copy = "#f5c359",
        delete = "#c75c6a",
        insert = "#78ccc5",
        visual = "#9745be",
      },
      line_opacity = 0.15,
      set_cursor = true,
      set_cursorline = true,
      set_number = true,
      set_signcolumn = true,
      ignore_filetypes = { "NvimTree", "TelescopePrompt" },
    })

    local function apply_mode_contrast()
      local is_light = vim.o.background == "light"
      local palette = is_light
          and {
            copy = "#a64800",
            delete = "#b0002d",
            insert = "#00796b",
            visual = "#6a1fbf",
          }
        or {
          copy = "#f5c359",
          delete = "#c75c6a",
          insert = "#78ccc5",
          visual = "#9745be",
        }
      local opacity = is_light and 0.55 or 0.15
      local fallback_bg = is_light and "#ffffff" or "#000000"
      local normal_bg = utils.get_bg("Normal", fallback_bg)
      local cursorline_suf = { "CursorLine", "CursorLineNr", "CursorLineSign", "CursorLineFold" }

      for mode, color in pairs(palette) do
        local mode_name = mode:sub(1, 1):upper() .. mode:sub(2)
        vim.api.nvim_set_hl(0, "Modes" .. mode_name, { bg = color })

        local blended = utils.blend(color, normal_bg, opacity)
        for _, suffix in ipairs(cursorline_suf) do
          vim.api.nvim_set_hl(0, "Modes" .. mode_name .. suffix, { bg = blended })
        end

        if mode == "visual" then
          vim.api.nvim_set_hl(0, "ModesVisualVisual", { bg = blended })
        end
      end

      vim.api.nvim_set_hl(0, "ModesInsertModeMsg", { fg = palette.insert })
      vim.api.nvim_set_hl(0, "ModesVisualModeMsg", { fg = palette.visual })
    end

    apply_mode_contrast()

    local function schedule_apply()
      vim.schedule(apply_mode_contrast)
    end

    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("modes_color_refresh", { clear = true }),
      callback = schedule_apply,
      desc = "Keep modes.nvim cursor visible on light backgrounds",
    })

    vim.api.nvim_create_autocmd("OptionSet", {
      group = vim.api.nvim_create_augroup("modes_background_refresh", { clear = true }),
      pattern = "background",
      callback = schedule_apply,
      desc = "Refresh modes.nvim colors when background changes",
    })
  end,
}
