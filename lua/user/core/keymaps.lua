vim.g.mapleader=" "

local keymap=vim.keymap

opt={ noremap = true, silent = true }

-- :noh取消高, n N

-- v: V: normal
-- ctrlv I,A esc, add one then add all
keymap.set("v","J",":m '>+1<CR>gv=gv",opt)
keymap.set("v","K",":m '<-2<CR>gv=gv",opt)
keymap.set("v","H","<gv",opt)
keymap.set("v","L",">gv",opt)

-- ctrlw+v 水平增加窗口
-- ctrlw+s 垂直增加窗口
keymap.set("n","<leader><up>",":res +5<CR>",opt)
keymap.set("n","<leader><down>",":res -5<CR>",opt)
keymap.set("n","<leader><right>",":vertical :resize-5<CR>",opt)
keymap.set("n","<leader><left>",":vertical :resize+5<CR>",opt)

-- :%s/aaa/bbb 替换所有
-- :s/aaa/bbb 替换当前行第一个
-- :s/aaa/bbb/g 替换当前所有

-- :tabterm :vert term :belowright term    i, <C-\><C-n>

-- have no right to w    :w !sudo tee 

-- gf    /dir/file

-- za 打开/关闭当前的折叠

--录制宏
--在normal模式下输入qa，输入q结束宏录制
--在normal模式下输入@a，以播放我们刚录制好的存在寄存器a中的宏
--输入7@a，执行7次

---------------------------------------------------------------------------plugins
--lsp
--keymap.set('n', 'fd', vim.diagnostic.open_float)
--按2次进入窗口，按q退出
--keymap.set('n', '[d', vim.diagnostic.goto_prev)
--keymap.set('n', ']d', vim.diagnostic.goto_next)
--keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
--keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
--keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--keymap.set('n', '<C-S>', vim.lsp.buf.signature_help, opts)

keymap.set("n","<leader>e",":NvimTreeToggle<CR>", opt)
-- <C-]> cd
-- <C-r> rename
-- <C-v> open v split
-- <C-x> open h split
-- a add
-- c copy
-- d delete
-- p paste
-- x cut

keymap.set("n","bh",":bp<CR>",opt)
keymap.set("n","bl",":bn<CR>",opt)
keymap.set("n", "bd", ":BufferLinePickClose<cr>", opt)

--comment
--gc
--gcc

--telescope.lua
--<leader>ff
--<leader>fg
--:Telescope find_files search_dirs={'/'}
--:Telescope live_grep search_dirs={'/'}
