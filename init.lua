require("_options")
require("_plugins")
require("_lsp")
require("_treesitter")
require("_telescope")
require("_whichkey")
require("_null-ls")
require("_terminal")

vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme tokyonight")
-------------------- HELPERS -------------------------------
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

opt.wrap = false

cmd [[
com! JsonIndent %!python -m json.tool
]]

-- important to import after colorscheme
require("_statusline")
