package.loaded['main'] = nil
package.loaded['main.runner'] = nil
package.loaded['dev'] = nil

vim.api.nvim_set_keymap('n',',v',':luafile dev/init.lua<Return>',{})

Firunner = require('main')

vim.api.nvim_set_keymap('n',',s',':lua Firunner.mainrun()<Return>' , {})


