require("morgan.set")
require("morgan.remap")
require("morgan.lazy_init")

local augroup = vim.api.nvim_create_augroup
local MorganGroup = augroup("Morgan", {})

local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
	group = MorganGroup,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_baner = 0
vim.g.netrw_winsize = 25
