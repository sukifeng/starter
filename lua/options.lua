require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

if vim.g.neovide then
  -- vim.o.guifont = "FiraMono Nerd Font:h10"
  vim.o.guifont = "Hack Nerd Font:h11"
  vim.g.neovide_profiler = false
  vim.cmd [[
    "autoread
    autocmd FocusGained * checktime
    ]]
end
--自动切换输入法
vim.cmd [[
 autocmd VimEnter * :silent :!e:\\Neovim\\tools\\im-select.exe 1033
"autocmd InsertEnter * :silent :!e:\\Neovim\\tools\\im-select.exe 2052
 autocmd InsertLeave * :silent :!e:\\Neovim\\tools\\im-select.exe 1033
"这些文件按q退出
 autocmd FileType qf,help nnoremap <silent><buffer> q <cmd>close<cr>
"autocmd VimLeave * :silent :!e:\\Neovim\\tools\\im-select.exe 2052
 "let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
 "let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';'
 "let &shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
 "let &shellpipe  = '2>&1 | %%{ "$_" } | Tee-Object %s; exit $LastExitCode'
 "set shellquote= shellxquote=
]]
vim.g.snipmate_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"
--自动切换目录
-- vim.o.autochdir = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.o.swapfile = false
vim.o.foldmethod = "indent"
vim.o.foldlevel = 99

vim.o.relativenumber = true
