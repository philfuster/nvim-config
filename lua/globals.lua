-------------------------------------------
--            custom variables           --
-------------------------------------------
vim.g.logging_level = "info"

-------------------------------------------
--            builtin variables          --
-------------------------------------------
vim.g.loaded_perl_provider = 0 -- Disable perl provider
vim.g.loaded_ruby_provider = 0 -- Disable ruby provider
vim.g.loaded_node_provider = 0 -- Disable node provider

-- Custom mapping <leader> (see :h mapleader for more info)
vim.g.mapleader = ','

-- Enable highlighting lua HERE doc inside vim script
vim.g.vimsyn_embed = '1'

-- Use English as main langugae
vim.cmd [[language en_US.UTF-8]]

-- Disable sql omni completion, it is broken
vim.g.loaded_sql_completion = 1
