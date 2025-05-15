return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    local dap_python = require("dap-python")

    -- Dynamically detect venv
    local function find_venv_python()
      local filepath = vim.api.nvim_buf_get_name(0)
      local dir = vim.fn.fnamemodify(filepath, ":p:h")

      -- Walk up to look for `.venv/bin/python`
      while dir ~= "/" do
        local candidate = dir .. "/.venv/bin/python"
        if vim.fn.filereadable(candidate) == 1 then
          return candidate
        end
        dir = vim.fn.fnamemodify(dir, ":h")
      end

      return vim.fn.exepath("python3")
    end

    local python_path = find_venv_python()
    vim.g.python3_host_prog = python_path
    dap_python.setup(python_path, { test_runner = "pytest" })

    -- Optional: automatically reconfigure when entering Python buffers
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*.py",
      callback = function()
        local new_path = find_venv_python()
        vim.g.python3_host_prog = new_path
        dap_python.setup(new_path, { test_runner = "pytest" })
      end,
    })

    -- Keymaps for debugging
    vim.keymap.set("n", "<leader>dm", dap_python.test_method, { desc = "Debug Python Test Method" })
    vim.keymap.set("n", "<leader>dT", dap_python.test_class, { desc = "Debug Python Test Class" })
  end,
}
