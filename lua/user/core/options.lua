local opt=vim.opt

opt.termguicolors=true
opt.signcolumn="yes"
vim.cmd("noh")

opt.number=true
opt.cursorline=true
opt.scrolloff=10
--vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
opt.wrap=true

opt.shiftwidth=2
opt.tabstop=2
opt.softtabstop=2
opt.expandtab=true
opt.smarttab=true
opt.autoindent=true
opt.indentexpr=''

opt.foldmethod='indent'
opt.foldlevel=99
opt.foldenable=true
opt.foldlevelstart=99

opt.splitright=true
opt.splitbelow=true

opt.ignorecase=true
opt.smartcase=true

opt.autochdir=true

opt.textwidth=0

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")
