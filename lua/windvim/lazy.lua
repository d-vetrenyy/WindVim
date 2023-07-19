local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        'git','clone','--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable',
        lazypath
    }
end
vim.opt.rtp:prepend(lazypath)

Wim.use_default_plugins = function()
    require('lazy').setup {
        -- Gruvbox Theme --
        { 'ellisonleao/gruvbox.nvim', priority = 1000 },
        -- Which Key --
        { 'folke/which-key.nvim', lazy = false},
        -- lualine --
        { 'nvim-lualine/lualine.nvim', priority = 1000 }
    }
end
