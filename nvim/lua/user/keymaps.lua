local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--  normal_mode = "n",
--  insert_mode = "i",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  term_mode = "t",
--  command_mode = "c"

-- Move 1 more lines up or down in normal and visual selection modes. --

keymap("n", "<S-k>", ":m .-2<CR>==", opts)
keymap("n", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m 1<-2<CR>gv=gv", opts)
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)

-- Call command shortcut --

keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

-- Better window navigation --

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Nvimtree --
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)

-- Changes the typing for entering in command mode in the normal and visual
-- mode to a semicolumn --

keymap("n", ";", ":", { noremap = true, silent = false })
keymap("v", ";", ":", { noremap = true, silent = false })

-- Paste last thing yanked, not deleted --

keymap("n", ",p", '"0p', opts)
keymap("n", ",P", '"0P', opts)

-- Clears the screen when searching for a word --

keymap("n", "//", ":nohl<CR>", opts)

-- Navigate buffers --

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Resize with arrows --

keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Press jk fast to enter normal mode --

keymap("i", "jk", "<ESC>", opts)

-- Stay in indent mode --

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Lspsaga --

keymap("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", opts)
keymap("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", opts)
