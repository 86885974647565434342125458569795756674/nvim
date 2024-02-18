vim.g.mapleader=" "

local keymap=vim.keymap

keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

keymap.set("n","<leader>e",":NvimTreeToggle<CR>")
-- <C-]> cd
-- <C-v> open v split
-- <C-x> open h split
-- a add

keymap.set("n","<leader><S-up>",":res +5<CR>")
keymap.set("n","<leader><S-down>",":res -5<CR>")
keymap.set("n","<leader><down>",":vertical :resize-5<CR>")
keymap.set("n","<leader><up>",":vertical :resize+5<CR>")


keymap.set("n","<C-L>",":bn<CR>")
keymap.set("n","<C-H>",":bp<CR>")

-- ctrlw+v 水平增加窗口
-- ctrlw+s 垂直增加窗口

-- :noh取消高, n N

-- v: V: normal
-- ctrlv I,A esc, add one then add all

-- have no right to w, w !sudo tee 

-- :tabterm :vert term :belowright term i, <C-\><C-n>

-- :%s/aaa/bbb 替换所有
-- :s/aaa/bbb 替换当前行第一个
-- :s/aaa/bbb/g 替换当前所有


