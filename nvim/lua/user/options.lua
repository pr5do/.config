local options = {
	number = true, -- Enable line numbers
	relativenumber = true, -- Enable relative numbers
	tabstop=4, -- Show existing tab with 4 spaces width
	softtabstop=4, -- Show existing tab with 4 spaces width
	shiftwidth=4, -- When indenting with '>', use 4 spaces width
	expandtab = true, -- On pressing tab, insert 4 spaces
	smarttab = true, -- Insert tabs on the start of a line according to shiftwidth
	colorcolumn="79",  -- Draws a line at the given line to keep aware of the line size
    swapfile = false,
	wrap = false, -- Sets no wrapping of the lines
	hidden = true, -- Hides the current buffer when a new line is opened
	incsearch = true, -- Incremental search
	ignorecase = true, -- Ignore case in search
	smartcase =true, -- Consider case if there is a upper case character
	scrolloff=8, -- Minimum number of lines to keep above and below the cursor
	signcolumn="yes", -- Add a column on the left. Useful for linting
	cmdheight=2, -- Give more space for displaying messages
	updatetime=100, -- Time in miliseconds to consider the changes
	encoding="UTF-8",
	backup = false, -- No backup files
	writebackup = false, -- No backup files
	splitright = true, -- Create the verticals splits to the right
	splitbelow = true, -- Create the horizontal splits below
	autoread = true, -- Update vim after file update from outside
	termguicolors = true,
	autochdir = true,
	clipboard= "unnamedplus",
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end


vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
