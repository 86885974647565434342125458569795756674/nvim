local opt=vim.opt

opt.number=true

opt.tabstop=2
opt.shiftwidth=2
opt.expandtab=true
opt.autoindent=true
opt.smarttab=true
opt.softtabstop=2
opt.indentexpr=''

opt.scrolloff=10

opt.wrap=false
opt.textwidth=0

opt.cursorline=true

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")

opt.foldmethod='indent'
opt.foldlevel=99
opt.foldenable=true
opt.foldlevelstart=99

opt.splitright=true
opt.splitbelow=true

opt.ignorecase=true
opt.smartcase=true

opt.autochdir=true

vim.cmd([[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])

opt.termguicolors=true
opt.signcolumn="yes"
vim.cmd[[colorscheme tokyonight-moon]]
