vim.g.mapleader=" "

local keymap=vim.keymap

keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

-- ctrlw+v 水平增加窗口
-- ctrlw+s 垂直增加窗口

-- :nohl取消高

keymap.set("n","<leader>e",":NvimTreeToggle<CR>")
