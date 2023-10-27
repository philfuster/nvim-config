local keymap = vim.keymap
local api = vim.api
local uv = vim.loop

-- Save key strokes (now we do not need to press shift to enter command mode).
keymap.set({"n", "x"}, ";", ":")

-- remap escape to j j
keymap.set("i", "jj", "<esc>")
