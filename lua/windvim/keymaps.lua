-- [[ KEYMAPS ]] --
local map = vim.keymap.set

-- NOTE: :verbose map <KEY> - to check if keymap is already in use. (use nmap, vmap, etc. for modes)
map('n', '<Space>', '<Nop>')


map('n', 'Y', 'y$', { noremap = false, silent = true, desc = 'yank from cursor to the EOL'})          -- yank from cursor to the end of line

map('n', '<C-j>', '<C-d>zz', { noremap = true, silent = true, desc = 'move 1/2 page down' })
map('n', '<C-k>', '<C-u>zz', { noremap = true, silent = true, desc = 'move 1/2 page down' }) 
map('n', '<C-d>', '<Nop>')
map('n', '<C-u>', '<Nop>')

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

map('n', '<leader>e', vim.cmd.Ex)
-- find and replace for the word you on (credit: ThePrimeagen "0 to LSP: Neovim RC From Scratch")
map('n', '<leader><M-s>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
