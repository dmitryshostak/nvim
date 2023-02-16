local cmd = vim.cmd
local g = vim.g
local fn = vim.fn
local opt = vim.opt
local api = vim.api

opt.expandtab = true
opt.ignorecase = true
opt.joinspaces = false

opt.list = true

opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
opt.shiftround = true
opt.shiftwidth = 2
opt.sidescrolloff = 8
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.wildmode = {'list', 'longest'}

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}

  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

g.mapleader = " "

-- Copy to clipboard in normal, visual, select and operator modes
map('', '<leader>c', '"+y')

-- Paste from clipboard in normal, visual, select and operator modes
map('', '<leader>v', '"+p')

-- Make <C-u> undo-friendly
map('i', '<C-u>', '<C-g>u<C-u>')

-- Make <C-w> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')

