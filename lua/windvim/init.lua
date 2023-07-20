-- This is the main part of WindVim that loads everything else
Wim = {}

require 'windvim.lazy'


Wim.leader = " "

Wim.use_settings = function()
	require 'windvim.settings'
end

Wim.use_keymaps  = function()
	require 'windvim.keymaps'
end

Wim.use_statusline = function()
    require('lualine').setup {
        options = {
            theme = 'auto',
            section_separators  = '',
            component_separators = { left = '', right = '┃' },
        },
        sections = {
            lualine_x = { 'fileformat', 'filetype' },
            lualine_y = {}
        },
    }
end

Wim.use_telescope = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
end

Wim.set_default_theme = function()
    vim.o.background  = 'dark'
    require('gruvbox').setup {
        undercurl     = true, -- ???
        underline     = true, -- ?
        bold          = true,
        italic        = {
            strings   = false, -- default: true
            comments  = false, -- default: true
            opeators = false,  -- default: false
            folds     = true
        },
        strikethrough        = true,   -- ???
        invert_selection     = false,  -- ??
        invert_signs         = false,  -- ??
        invert_tabline       = false,  -- ??
        invert_intend_guides = false,  -- ???
        inverse              = true,   -- invert background for search, diffs, statuslines and errors
        contrast             = 'hard', -- '' | 'hard' | 'soft' ; default: ''
        palette_overrides    = {},
        overrides            = {},
        dim_inactive         = false,  -- ??
        transparent_mode     = false,   -- default: false
    }
    vim.cmd [[colorscheme gruvbox]] 
end
