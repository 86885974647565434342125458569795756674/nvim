local opt=vim.opt

opt.number=true

opt.tabstop=4
opt.shiftwidth=4
opt.expandtab=true
opt.autoindent=true

opt.wrap=false

opt.cursorline=true

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")

opt.termguicolors=true
opt.signcolumn="yes"
vim.cmd[[colorscheme tokyonight-moon]]
