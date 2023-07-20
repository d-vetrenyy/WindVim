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
        { 'folke/which-key.nvim', lazy = true },
        -- Lualine --
        { 'nvim-lualine/lualine.nvim', priority = 1000 },
        -- Telescope --
        { 'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = {'nvim-lua/plenary.nvim'}, lazy = true }
    }
end
