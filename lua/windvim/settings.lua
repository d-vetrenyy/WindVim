-- [[ SETTINGS ]] --
vim.opt.backup       = false
vim.opt.clipboard    = 'unnamedplus'
vim.opt.cmdheight    = 1
vim.opt.fileencoding = 'utf-8'
vim.opt.mouse        = 'a'
vim.opt.showmode     = false
vim.opt.updatetime   = 50
vim.opt.writebackup  = false
vim.opt.history      = 500
vim.opt.timeoutlen   = 1100

vim.g.mapleader = Wim.leader

--- Visuals ---
vim.opt.termguicolors  = true
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.cursorline     = true
vim.opt.cursorcolumn   = false
vim.opt.wrap           = false
-- vim.opt.signcolumn     = 'yes'
vim.opt.scrolloff      = 8
vim.opt.isfname:append '@-@'
vim.opt.sidescrolloff  = 15
vim.opt.guifont        = 'monospace:h17'

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', {clear = true})
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({higroup = 'IncSearch', timeout = 350})
    end,
    group = highlight_group,
    pattern = '*'
})

--- Tabulation & Indentation ---
vim.opt.expandtab   = true
vim.opt.shiftwidth  = 4
vim.opt.tabstop     = 4
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.cmd 'autocmd BufEnter * set fo-=c fo-=r fo-=o' -- don't continue commenting on new line

--- Search ---
vim.opt.incsearch  = true
vim.opt.ignorecase = true
vim.opt.smartcase  = true
vim.opt.showmatch  = true
vim.opt.hlsearch   = true

--- Completion ---
vim.opt.wildmenu = true
vim.cmd [[
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.exe,*.gif,*.pdf,*.pyc,*.flv,*.mp3,*.img,*.xlsx,*.wav
]]

--- for Neovide ---
if vim.g.neovide then
    vim.opt.linespace = 0
    vim.g.neovide_scale_factor = 1.0
    -- padding
    vim.g.neovide_padding_top    = 6
    vim.g.neovide_padding_bottom = 6
    vim.g.neovide_padding_right  = 6
    vim.g.neovide_padding_left   = 6
    --
    vim.g.neovide_transparency   = 1.0
    vim.g.neovide_scroll_animation_length = 2.0
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_theme = 'dark'
    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 5
    vim.g.neovide_profiler = false
    vim.g.neovide_no_idle = true
    vim.g.neovide_fullscreen = true
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_cursor_animate_in_insert_mode = true
    vim.g.neovide_cursor_animate_command_line = true
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
    vim.g.neovide_cursor_trail_size = 0.6

end
