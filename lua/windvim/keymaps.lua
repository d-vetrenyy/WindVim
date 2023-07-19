-- [[ KEYMAPS ]] --
local map = vim.keymap.set

map('n', '<leader>e', vim.cmd.Ex)

map('n', 'Y', 'y$') -- yank from cursor to the end of line

-- paste text and keep the same text to paste next 
map('x', '<M-p>', 'p')
map('x', 'p', "\"_dP")

-- hide search highlighting
-- NOTE: to drop search results press `Ctrl+l`
map('n', '<M-/>', vim.cmd.noh)

map('v', '<M-Up>',   ":m '>-2<CR>gv=gv")
map('v', '<M-Down>', ":m '>+1<CR>gv=gv")

map('n', '<M-Up>',   "V:m '>-2<CR>")
map('n', '<M-Down>', "V:m '>+1<CR>")

-- find and replace for the word you on (credit: ThePrimeagen "0 to LSP: Neovim RC From Scratch")
map('n', '<leader><M-s>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
