-- [[ Wind Vim ]] --

-- this loads Main module of Windvim
-- it makes global `Wim` module avaliable
require 'windvim' 

Wim.mapleader = " "
Wim.use_settings()
Wim.use_keymaps()
Wim.use_default_plugins()
Wim.set_default_theme()
Wim.use_statusline()
