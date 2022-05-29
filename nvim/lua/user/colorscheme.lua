vim.cmd [[
try
    colorscheme dracula
    "colorscheme sonokai
    "colorscheme molokai
    "colorscheme gruvbox

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
