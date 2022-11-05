-- package.loaded['main'] = nil
-- package.loaded['main.runner'] = nil
-- package.loaded['dev'] = nil

Firunner = require('main')
vim.api.nvim_set_keymap('n',',v',':luafile dev/init.lua',{})
vim.api.nvim_set_keymap('n',',s',':lua Firunner.mainrun()<Return>' , {})


