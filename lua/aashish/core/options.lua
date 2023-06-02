local opt = vim.opt
local diagnostic = vim.diagnostic
-- line numbers
opt.relativenumber = true
opt.number = true
opt.scrolloff = 40

-- tabs & indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- line wrapping
opt.wrap = true
opt.linebreak = true

-- search setttings
opt.ignorecase = true
opt.smartcase = true

-- apperance
opt.termguicolors = true
opt.background = ""
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- text deleting
opt.iskeyword:append("-")

-- lsp lines
diagnostic.config({ virtual_text = false, virtual_lines = { only_current_line = true } })
