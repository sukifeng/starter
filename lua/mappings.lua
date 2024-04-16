require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>w", "<cmd>w<cr>", {desc = "save file"})

vim.cmd([[
  function! OpenFolder()
      execute "silent !start explorer.exe /select, " . shellescape(expand('%'),1)
  endfunction
]])
map("n", "<leader>a", "<cmd>call OpenFolder()<cr>", {desc = "open in folder"})

