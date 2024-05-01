-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- buffers
vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")
vim.keymap.set("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "prev Buffer" })
vim.keymap.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "next Buffer" })
