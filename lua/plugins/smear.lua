return {
  {
    "sphamba/smear-cursor.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.hide_target_hack = false
      return opts
    end,
    config = function(_, opts)
      local smear = require("smear_cursor")
      smear.setup(opts)
    end,
  },
}
