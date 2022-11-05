# firunner

- firunner is plugin with which you will be able to run you python scripts easily in neovim.
- you have to just install it in your neovim and press some keys and boomm !!!. 
- On each save your file will run automatically in another buffer.

## Setup
### For Packer
- Paste this line in file where your other plugins are located.
`use { 'dhruvdabhi101/firunner' }`
- Run `:PackerInstall` command in neovim.
### For Plug
- Paste this line in file where your other plugins are located.
`Plug 'dhruvdabhi101/firunner`
- Run `:PlugInstall` command in neovim.

## How to use 
1. Open Python file you want to work in.
2. Use this keybinding `,s`.
3. Boomm.. Another Buffer is opened. Now go back to your python file's buffer.
4. Start working in python file. and Save python file. You should be seeing output in newly created buffer.
