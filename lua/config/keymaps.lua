-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local map = vim.keymap.set
map("n", "<C-d>", "<C-d>zz", { desc = "recenter after go down half page", remap = true })
map("n", "<C-u>", "<C-u>zz", { desc = "recenter after go up half page", remap = true })
