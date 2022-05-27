-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

-- Load nvim color scheme:
-- Change the "require" values with your color scheme
local status_ok, color_scheme = pcall(require, 'nord')
if not status_ok then
  return
end

-- Example config in lua
vim.g.nord_contrast = false
vim.g.nord_borders = false
vim.g.nord_disable_background = true
vim.g.nord_cursorline_transparent = true
vim.g.nord_enable_sidebar_background = false
vim.g.nord_italic = false

-- Load the colorscheme
require('nord').set()
