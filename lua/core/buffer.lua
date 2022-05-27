----------------------------------------------------------
--- Buffers configuration file
-----------------------------------------------------------
local status_ok, buffer = pcall(require, 'bufferline')
if not status_ok then
  return
end
require("bufferline").setup{}
