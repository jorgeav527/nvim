----------------------------------------------------------
-- Statusline configuration file
-----------------------------------------------------------

local status_ok, feline = pcall(require, 'lualine')
if not status_ok then
  return
end


require('lualine').setup {
  options = {
    section_separators = '',
    component_separators = '',
    theme = 'nord'
  },
}
