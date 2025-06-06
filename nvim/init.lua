-- Загрузка базовых настроек
require('config.options')
require('config.keymaps')
require('config.autocmds')
require('config.health')

-- Импорт плагинов
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
	if vim.v.shell_error ~= 0 then
		error('Error cloning lazy.nvim:\n' .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{ import = 'plugins.editor' },
	{ import = 'plugins.git' },
	{ import = 'plugins.comments' },
	{ import = 'plugins.navigation' },
	{ import = 'plugins.ui' },
	{ import = 'plugins.tools' },
})
