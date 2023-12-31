-- This is my personal Nvim configuration. I am basing it off of -- jadhao's config, which can be found at: https://github.com/jdhao/nvim-config/
vim.loader.enable()

local version = vim.version

local core_conf_files = {
	"globals.lua", -- some global settings
	"options.vim", -- setting options in nvim
	"mappings.lua" -- all the user-defined mappings
}


local viml_conf_dir = vim.fn.stdpath("config") .. "/viml_conf"
-- source all the core config files
for _, file_name in ipairs(core_conf_files) do
	if vim.endswith(file_name, 'vim') then
		local path = string.format("%s/%s", viml_conf_dir, file_name)
		local source_cmd = "source " .. path
		vim.cmd(source_cmd)
	else
		local module_name, _ = string.gsub(file_name, "%.lua", "")
		package.loaded[module_name] = nil
		require(module_name)
	end
end
