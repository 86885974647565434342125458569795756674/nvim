vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        diagnostics = "nvim_lsp",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",-- | function ,
                text_align = "left",-- | "center" | "right"
                --separator = true
                highlight = "Directory",
            }
        },
    }
}